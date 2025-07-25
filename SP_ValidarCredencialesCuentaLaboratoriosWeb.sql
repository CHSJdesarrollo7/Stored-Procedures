USE [liPruebas]
GO
/****** Object:  StoredProcedure [dbo].[SP_ValidarCredencialesCuentaLaboratoriosWeb]    Script Date: 23/05/2025 04:10:37 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[SP_ValidarCredencialesCuentaLaboratoriosWeb]
    @Usuario NVARCHAR(50), -- Puede ser correo o teléfono
    @Contrasenia NVARCHAR(20)
AS
BEGIN
    SET NOCOUNT ON;

    -- Si encuentra credenciales válidas
    IF EXISTS (
        SELECT 1
        FROM hiPruebas24.dbo.CuentaResultadosWeb crw
        WHERE (crw.CorreoElectronico = @Usuario OR crw.Telefono = @Usuario)
          AND crw.Contrasenia = @Contrasenia
    )
    BEGIN
        SELECT TOP 1
            'Inicio de sesión exitoso' AS mensaje,
            crw.PacienteId,
            dp.NombrePac + ' ' + dp.Apellidos AS NombreCompleto,
			dp.FechaNacimiento
        FROM hiPruebas24.dbo.CuentaResultadosWeb crw
        INNER JOIN hiPruebas24.dbo.DatosPacientes dp ON crw.PacienteId = dp.PacienteId
        WHERE (crw.CorreoElectronico = @Usuario OR crw.Telefono = @Usuario)
          AND crw.Contrasenia = @Contrasenia;
    END
    ELSE
    BEGIN
        SELECT 'Credenciales inválidas' AS mensaje;
    END
END;