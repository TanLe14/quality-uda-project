[CmdletBinding()]
param()

Import-Module -Name 'Microsoft.PowerShell.Management'
Import-Module -Name 'Microsoft.PowerShell.Utility'
$ErrorActionPreference = 'Stop'
Import-Module -Name $PSScriptRoot\CapabilityHelpers

# Run each capability script.
foreach ($item in (Get-ChildItem -LiteralPath "$PSScriptRoot" -Filter "Add-*Capabilities.ps1")) {
    if ($item.Name -eq ([System.IO.Path]::GetFileName($PSCommandPath))) {
        continue;
    }

    Write-Host "& $($item.FullName)"
    try {
        & $item.FullName
    } catch {
        Write-Host ($_ | Out-String)
    }
}

# SIG # Begin signature block
# MIInogYJKoZIhvcNAQcCoIInkzCCJ48CAQExDzANBglghkgBZQMEAgEFADB5Bgor
# BgEEAYI3AgEEoGswaTA0BgorBgEEAYI3AgEeMCYCAwEAAAQQH8w7YFlLCE63JNLG
# KX7zUQIBAAIBAAIBAAIBAAIBADAxMA0GCWCGSAFlAwQCAQUABCBXhSLVqooAK2oa
# 1IIhSQfed8gQLB7QtEdAxCm3deQ7cKCCDYUwggYDMIID66ADAgECAhMzAAACU+OD
# 3pbexW7MAAAAAAJTMA0GCSqGSIb3DQEBCwUAMH4xCzAJBgNVBAYTAlVTMRMwEQYD
# VQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01pY3Jvc29mdCBDb2RlIFNpZ25p
# bmcgUENBIDIwMTEwHhcNMjEwOTAyMTgzMzAwWhcNMjIwOTAxMTgzMzAwWjB0MQsw
# CQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9u
# ZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMR4wHAYDVQQDExVNaWNy
# b3NvZnQgQ29ycG9yYXRpb24wggEiMA0GCSqGSIb3DQEBAQUAA4IBDwAwggEKAoIB
# AQDLhxHwq3OhH+4J+SX4qS/VQG8HybccH7tnG+BUqrXubfGuDFYPZ29uCuHfQlO1
# lygLgMpJ4Geh6/6poQ5VkDKfVssn6aA1PCzIh8iOPMQ9Mju3sLF9Sn+Pzuaie4BN
# rp0MuZLDEXgVYx2WNjmzqcxC7dY9SC3znOh5qUy2vnmWygC7b9kj0d3JrGtjc5q5
# 0WfV3WLXAQHkeRROsJFBZfXFGoSvRljFFUAjU/zdhP92P+1JiRRRikVy/sqIhMDY
# +7tVdzlE2fwnKOv9LShgKeyEevgMl0B1Fq7E2YeBZKF6KlhmYi9CE1350cnTUoU4
# YpQSnZo0YAnaenREDLfFGKTdAgMBAAGjggGCMIIBfjAfBgNVHSUEGDAWBgorBgEE
# AYI3TAgBBggrBgEFBQcDAzAdBgNVHQ4EFgQUlZpLWIccXoxessA/DRbe26glhEMw
# VAYDVR0RBE0wS6RJMEcxLTArBgNVBAsTJE1pY3Jvc29mdCBJcmVsYW5kIE9wZXJh
# dGlvbnMgTGltaXRlZDEWMBQGA1UEBRMNMjMwMDEyKzQ2NzU5ODAfBgNVHSMEGDAW
# gBRIbmTlUAXTgqoXNzcitW2oynUClTBUBgNVHR8ETTBLMEmgR6BFhkNodHRwOi8v
# d3d3Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2NybC9NaWNDb2RTaWdQQ0EyMDExXzIw
# MTEtMDctMDguY3JsMGEGCCsGAQUFBwEBBFUwUzBRBggrBgEFBQcwAoZFaHR0cDov
# L3d3dy5taWNyb3NvZnQuY29tL3BraW9wcy9jZXJ0cy9NaWNDb2RTaWdQQ0EyMDEx
# XzIwMTEtMDctMDguY3J0MAwGA1UdEwEB/wQCMAAwDQYJKoZIhvcNAQELBQADggIB
# AKVY+yKcJVVxf9W2vNkL5ufjOpqcvVOOOdVyjy1dmsO4O8khWhqrecdVZp09adOZ
# 8kcMtQ0U+oKx484Jg11cc4Ck0FyOBnp+YIFbOxYCqzaqMcaRAgy48n1tbz/EFYiF
# zJmMiGnlgWFCStONPvQOBD2y/Ej3qBRnGy9EZS1EDlRN/8l5Rs3HX2lZhd9WuukR
# bUk83U99TPJyo12cU0Mb3n1HJv/JZpwSyqb3O0o4HExVJSkwN1m42fSVIVtXVVSa
# YZiVpv32GoD/dyAS/gyplfR6FI3RnCOomzlycSqoz0zBCPFiCMhVhQ6qn+J0GhgR
# BJvGKizw+5lTfnBFoqKZJDROz+uGDl9tw6JvnVqAZKGrWv/CsYaegaPePFrAVSxA
# yUwOFTkAqtNC8uAee+rv2V5xLw8FfpKJ5yKiMKnCKrIaFQDr5AZ7f2ejGGDf+8Tz
# OiK1AgBvOW3iTEEa/at8Z4+s1CmnEAkAi0cLjB72CJedU1LAswdOCWM2MDIZVo9j
# 0T74OkJLTjPd3WNEyw0rBXTyhlbYQsYt7ElT2l2TTlF5EmpVixGtj4ChNjWoKr9y
# TAqtadd2Ym5FNB792GzwNwa631BPCgBJmcRpFKXt0VEQq7UXVNYBiBRd+x4yvjqq
# 5aF7XC5nXCgjbCk7IXwmOphNuNDNiRq83Ejjnc7mxrJGMIIHejCCBWKgAwIBAgIK
# YQ6Q0gAAAAAAAzANBgkqhkiG9w0BAQsFADCBiDELMAkGA1UEBhMCVVMxEzARBgNV
# BAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jv
# c29mdCBDb3Jwb3JhdGlvbjEyMDAGA1UEAxMpTWljcm9zb2Z0IFJvb3QgQ2VydGlm
# aWNhdGUgQXV0aG9yaXR5IDIwMTEwHhcNMTEwNzA4MjA1OTA5WhcNMjYwNzA4MjEw
# OTA5WjB+MQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UE
# BxMHUmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSgwJgYD
# VQQDEx9NaWNyb3NvZnQgQ29kZSBTaWduaW5nIFBDQSAyMDExMIICIjANBgkqhkiG
# 9w0BAQEFAAOCAg8AMIICCgKCAgEAq/D6chAcLq3YbqqCEE00uvK2WCGfQhsqa+la
# UKq4BjgaBEm6f8MMHt03a8YS2AvwOMKZBrDIOdUBFDFC04kNeWSHfpRgJGyvnkmc
# 6Whe0t+bU7IKLMOv2akrrnoJr9eWWcpgGgXpZnboMlImEi/nqwhQz7NEt13YxC4D
# dato88tt8zpcoRb0RrrgOGSsbmQ1eKagYw8t00CT+OPeBw3VXHmlSSnnDb6gE3e+
# lD3v++MrWhAfTVYoonpy4BI6t0le2O3tQ5GD2Xuye4Yb2T6xjF3oiU+EGvKhL1nk
# kDstrjNYxbc+/jLTswM9sbKvkjh+0p2ALPVOVpEhNSXDOW5kf1O6nA+tGSOEy/S6
# A4aN91/w0FK/jJSHvMAhdCVfGCi2zCcoOCWYOUo2z3yxkq4cI6epZuxhH2rhKEmd
# X4jiJV3TIUs+UsS1Vz8kA/DRelsv1SPjcF0PUUZ3s/gA4bysAoJf28AVs70b1FVL
# 5zmhD+kjSbwYuER8ReTBw3J64HLnJN+/RpnF78IcV9uDjexNSTCnq47f7Fufr/zd
# sGbiwZeBe+3W7UvnSSmnEyimp31ngOaKYnhfsi+E11ecXL93KCjx7W3DKI8sj0A3
# T8HhhUSJxAlMxdSlQy90lfdu+HggWCwTXWCVmj5PM4TasIgX3p5O9JawvEagbJjS
# 4NaIjAsCAwEAAaOCAe0wggHpMBAGCSsGAQQBgjcVAQQDAgEAMB0GA1UdDgQWBBRI
# bmTlUAXTgqoXNzcitW2oynUClTAZBgkrBgEEAYI3FAIEDB4KAFMAdQBiAEMAQTAL
# BgNVHQ8EBAMCAYYwDwYDVR0TAQH/BAUwAwEB/zAfBgNVHSMEGDAWgBRyLToCMZBD
# uRQFTuHqp8cx0SOJNDBaBgNVHR8EUzBRME+gTaBLhklodHRwOi8vY3JsLm1pY3Jv
# c29mdC5jb20vcGtpL2NybC9wcm9kdWN0cy9NaWNSb29DZXJBdXQyMDExXzIwMTFf
# MDNfMjIuY3JsMF4GCCsGAQUFBwEBBFIwUDBOBggrBgEFBQcwAoZCaHR0cDovL3d3
# dy5taWNyb3NvZnQuY29tL3BraS9jZXJ0cy9NaWNSb29DZXJBdXQyMDExXzIwMTFf
# MDNfMjIuY3J0MIGfBgNVHSAEgZcwgZQwgZEGCSsGAQQBgjcuAzCBgzA/BggrBgEF
# BQcCARYzaHR0cDovL3d3dy5taWNyb3NvZnQuY29tL3BraW9wcy9kb2NzL3ByaW1h
# cnljcHMuaHRtMEAGCCsGAQUFBwICMDQeMiAdAEwAZQBnAGEAbABfAHAAbwBsAGkA
# YwB5AF8AcwB0AGEAdABlAG0AZQBuAHQALiAdMA0GCSqGSIb3DQEBCwUAA4ICAQBn
# 8oalmOBUeRou09h0ZyKbC5YR4WOSmUKWfdJ5DJDBZV8uLD74w3LRbYP+vj/oCso7
# v0epo/Np22O/IjWll11lhJB9i0ZQVdgMknzSGksc8zxCi1LQsP1r4z4HLimb5j0b
# pdS1HXeUOeLpZMlEPXh6I/MTfaaQdION9MsmAkYqwooQu6SpBQyb7Wj6aC6VoCo/
# KmtYSWMfCWluWpiW5IP0wI/zRive/DvQvTXvbiWu5a8n7dDd8w6vmSiXmE0OPQvy
# CInWH8MyGOLwxS3OW560STkKxgrCxq2u5bLZ2xWIUUVYODJxJxp/sfQn+N4sOiBp
# mLJZiWhub6e3dMNABQamASooPoI/E01mC8CzTfXhj38cbxV9Rad25UAqZaPDXVJi
# hsMdYzaXht/a8/jyFqGaJ+HNpZfQ7l1jQeNbB5yHPgZ3BtEGsXUfFL5hYbXw3MYb
# BL7fQccOKO7eZS/sl/ahXJbYANahRr1Z85elCUtIEJmAH9AAKcWxm6U/RXceNcbS
# oqKfenoi+kiVH6v7RyOA9Z74v2u3S5fi63V4GuzqN5l5GEv/1rMjaHXmr/r8i+sL
# gOppO6/8MO0ETI7f33VtY5E90Z1WTk+/gFcioXgRMiF670EKsT/7qMykXcGhiJtX
# cVZOSEXAQsmbdlsKgEhr/Xmfwb1tbWrJUnMTDXpQzTGCGXMwghlvAgEBMIGVMH4x
# CzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRt
# b25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xKDAmBgNVBAMTH01p
# Y3Jvc29mdCBDb2RlIFNpZ25pbmcgUENBIDIwMTECEzMAAAJT44Pelt7FbswAAAAA
# AlMwDQYJYIZIAWUDBAIBBQCgga4wGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQw
# HAYKKwYBBAGCNwIBCzEOMAwGCisGAQQBgjcCARUwLwYJKoZIhvcNAQkEMSIEIOCI
# VC2D+xgCF09nqhjirGtq4t5LRULK/7lgENKQOug7MEIGCisGAQQBgjcCAQwxNDAy
# oBSAEgBNAGkAYwByAG8AcwBvAGYAdKEagBhodHRwOi8vd3d3Lm1pY3Jvc29mdC5j
# b20wDQYJKoZIhvcNAQEBBQAEggEAL+Pjbf9pl2w/3g2VihTo4FYAUOAFIehSYdmd
# e5/0pJ+kz3EIu4JI7AmAwxrFblw37qhKyv1f+8sfV9TLl0xG2pODVNhau5EPpfo6
# aqZcZLMlmmP7KCCjUTc7PXwMDzVpkjlxYvSVIg7/TUAW8T+bM0xlD6XhMjPDAo1M
# 5JRI61NieMh5otBw54UoO4FvznIM94EX09pUUvbJ2OPlHLiMgjEYLhq4GL4mfH5D
# d2uP6S9Pc8Fd2En8OqPYGYivWQkyJB83B0Nuh8j+9Rlo9DL94nsMuvMAKxin+D+x
# Yzr7TnPBDUpGy8xegm/Ir+DeoSY1sQ/67ukIcLbAbO+1WnElY6GCFv0wghb5Bgor
# BgEEAYI3AwMBMYIW6TCCFuUGCSqGSIb3DQEHAqCCFtYwghbSAgEDMQ8wDQYJYIZI
# AWUDBAIBBQAwggFRBgsqhkiG9w0BCRABBKCCAUAEggE8MIIBOAIBAQYKKwYBBAGE
# WQoDATAxMA0GCWCGSAFlAwQCAQUABCDAnVRO21Ye4HohU/4rd7Qj+05R6VcFtVpn
# 2icgMXgV3gIGYke7lZ6tGBMyMDIyMDQxMjEwMjU0NC4wNjFaMASAAgH0oIHQpIHN
# MIHKMQswCQYDVQQGEwJVUzETMBEGA1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMH
# UmVkbW9uZDEeMBwGA1UEChMVTWljcm9zb2Z0IENvcnBvcmF0aW9uMSUwIwYDVQQL
# ExxNaWNyb3NvZnQgQW1lcmljYSBPcGVyYXRpb25zMSYwJAYDVQQLEx1UaGFsZXMg
# VFNTIEVTTjozRTdBLUUzNTktQTI1RDElMCMGA1UEAxMcTWljcm9zb2Z0IFRpbWUt
# U3RhbXAgU2VydmljZaCCEVQwggcMMIIE9KADAgECAhMzAAABoOm7jLsOotF6AAEA
# AAGgMA0GCSqGSIb3DQEBCwUAMHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNo
# aW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29y
# cG9yYXRpb24xJjAkBgNVBAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEw
# MB4XDTIxMTIwMjE5MDUyM1oXDTIzMDIyODE5MDUyM1owgcoxCzAJBgNVBAYTAlVT
# MRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQHEwdSZWRtb25kMR4wHAYDVQQK
# ExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJTAjBgNVBAsTHE1pY3Jvc29mdCBBbWVy
# aWNhIE9wZXJhdGlvbnMxJjAkBgNVBAsTHVRoYWxlcyBUU1MgRVNOOjNFN0EtRTM1
# OS1BMjVEMSUwIwYDVQQDExxNaWNyb3NvZnQgVGltZS1TdGFtcCBTZXJ2aWNlMIIC
# IjANBgkqhkiG9w0BAQEFAAOCAg8AMIICCgKCAgEAv9riDmhxnQDo9mL4YSOgvIhQ
# Ku8K5f+VqT449HxBwouiL8fyNNibLPx1YZHxkzBrbUeY0YYayV8nVg5zps0VNweB
# uduU+6cJBTRQV7pjP/fJeZNFNl4mmfm7pVx3ueMero/+r+VRhb/tB4dXcoxlEz2k
# RMEu8ffE3ubRRxIpj2vgLBtpjPp/TcH0EY3dS4hAm3AmRZIMG5YkP2pIjK9bWZo5
# A28bbtmkHF4xHw52vCR/sGZn3btF+5OnSeVhkRcM2YiziVuEIQBKXodnNZpm7QHw
# Z4UjzfhOclC36X009sF/EWx+l3wIOrGcfPPesatPoFA/Zh8vGbaXRHhNWQNB4Acg
# 1tqyQm0wCQIbe9Qe0c9qT0JoOUd/r0gq4vAXnEgfmfJsGC97jkt0em3lASe4hOKz
# 0vVgtcNX2UeyuOGUpntnSPjvf54YG9zC2IJus8dx4bS6BoRlTy/lqA5DJ7fdyBqD
# upDQQjNl/grNtqpdrT45CEcscMRekbF4f0B54SiYAc3zvnvOCN02GyNItvcwEy+s
# hzr+bBLNc2jTIoduyMH1oOEO/uNC+3uvLgusg/BFBKWg9rNk+fTYUmrk8whJwKeW
# K0rHHPTEFSIu4PuRgHQvKQr/tIkWu0CL2pVPvZVoJMgAVP54hR1j48hqAeMdys6N
# 7Vwemgt8mf3U0V6SZ2kCAwEAAaOCATYwggEyMB0GA1UdDgQWBBRyuS5Q2ClOkbiR
# bBQvRM8LYYzQ6DAfBgNVHSMEGDAWgBSfpxVdAF5iXYP05dJlpxtTNRnpcjBfBgNV
# HR8EWDBWMFSgUqBQhk5odHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtpb3BzL2Ny
# bC9NaWNyb3NvZnQlMjBUaW1lLVN0YW1wJTIwUENBJTIwMjAxMCgxKS5jcmwwbAYI
# KwYBBQUHAQEEYDBeMFwGCCsGAQUFBzAChlBodHRwOi8vd3d3Lm1pY3Jvc29mdC5j
# b20vcGtpb3BzL2NlcnRzL01pY3Jvc29mdCUyMFRpbWUtU3RhbXAlMjBQQ0ElMjAy
# MDEwKDEpLmNydDAMBgNVHRMBAf8EAjAAMBMGA1UdJQQMMAoGCCsGAQUFBwMIMA0G
# CSqGSIb3DQEBCwUAA4ICAQAxfcYCq/jfrJQJpW3BKkAZaS+T3wTKnC5EusknhiYx
# viyl91qL+acoK4Sn7V2fdDWFlH7SGac3WLOHoUeUZWhN3mLm1pXDZcLCpHKxkgyS
# msG2wxn7zuIf9S9d7IOuoT4m+u5hveggKkVRdHOTANcIio45f+YH623TSx4LUREP
# MwqWyuPuupdRXdLqfZsXDhBKYYSa/FN8IcBcKCvkCf5MVqIBrXw4mqukcqBVoT/L
# iki1Q1fjExEx2W96djsJwVhNVutO9VwyncUZDf6QBGdeRNSyTb/YmKNZdT/0XRfi
# M6TCxgwH/z5Vb01MN1ax/bmqm2K/q0cbYvmzN2m9cL/b98US3PsD6J4ksVtqevQz
# eFqPeiAxWSJC0fh3Fgoqh1cBV54JAlH3THt8ZrziF2EZEytD+sDy3wvjrO6HlUXj
# I9kwNUDDJIGfq4TztO4luzee8wAbzIhyUHR0THitxQYEeH2hL041AHSkUJChVfNr
# hO8NFDJ7HiX1+xCw2PU+GlsdqsBKmpvZexh1+ANmZtJ59aGmv2MXMye4CFREUhkj
# li8BDMXBagRj5vUEkO6IDAZ+Vh8JHU05JmpwW/2dnA6cQcXdbzo8iJuAThZS4weK
# YrwpTtmZLFih+6gWJaGGtO1NTtwvI7W8xlHR8iwmlRgVfA3w+YfHjp8o62gRuzzT
# WTCCB3EwggVZoAMCAQICEzMAAAAVxedrngKbSZkAAAAAABUwDQYJKoZIhvcNAQEL
# BQAwgYgxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQH
# EwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xMjAwBgNV
# BAMTKU1pY3Jvc29mdCBSb290IENlcnRpZmljYXRlIEF1dGhvcml0eSAyMDEwMB4X
# DTIxMDkzMDE4MjIyNVoXDTMwMDkzMDE4MzIyNVowfDELMAkGA1UEBhMCVVMxEzAR
# BgNVBAgTCldhc2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1p
# Y3Jvc29mdCBDb3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3Rh
# bXAgUENBIDIwMTAwggIiMA0GCSqGSIb3DQEBAQUAA4ICDwAwggIKAoICAQDk4aZM
# 57RyIQt5osvXJHm9DtWC0/3unAcH0qlsTnXIyjVX9gF/bErg4r25PhdgM/9cT8dm
# 95VTcVrifkpa/rg2Z4VGIwy1jRPPdzLAEBjoYH1qUoNEt6aORmsHFPPFdvWGUNzB
# RMhxXFExN6AKOG6N7dcP2CZTfDlhAnrEqv1yaa8dq6z2Nr41JmTamDu6GnszrYBb
# fowQHJ1S/rboYiXcag/PXfT+jlPP1uyFVk3v3byNpOORj7I5LFGc6XBpDco2LXCO
# Mcg1KL3jtIckw+DJj361VI/c+gVVmG1oO5pGve2krnopN6zL64NF50ZuyjLVwIYw
# XE8s4mKyzbnijYjklqwBSru+cakXW2dg3viSkR4dPf0gz3N9QZpGdc3EXzTdEonW
# /aUgfX782Z5F37ZyL9t9X4C626p+Nuw2TPYrbqgSUei/BQOj0XOmTTd0lBw0gg/w
# EPK3Rxjtp+iZfD9M269ewvPV2HM9Q07BMzlMjgK8QmguEOqEUUbi0b1qGFphAXPK
# Z6Je1yh2AuIzGHLXpyDwwvoSCtdjbwzJNmSLW6CmgyFdXzB0kZSU2LlQ+QuJYfM2
# BjUYhEfb3BvR/bLUHMVr9lxSUV0S2yW6r1AFemzFER1y7435UsSFF5PAPBXbGjfH
# CBUYP3irRbb1Hode2o+eFnJpxq57t7c+auIurQIDAQABo4IB3TCCAdkwEgYJKwYB
# BAGCNxUBBAUCAwEAATAjBgkrBgEEAYI3FQIEFgQUKqdS/mTEmr6CkTxGNSnPEP8v
# BO4wHQYDVR0OBBYEFJ+nFV0AXmJdg/Tl0mWnG1M1GelyMFwGA1UdIARVMFMwUQYM
# KwYBBAGCN0yDfQEBMEEwPwYIKwYBBQUHAgEWM2h0dHA6Ly93d3cubWljcm9zb2Z0
# LmNvbS9wa2lvcHMvRG9jcy9SZXBvc2l0b3J5Lmh0bTATBgNVHSUEDDAKBggrBgEF
# BQcDCDAZBgkrBgEEAYI3FAIEDB4KAFMAdQBiAEMAQTALBgNVHQ8EBAMCAYYwDwYD
# VR0TAQH/BAUwAwEB/zAfBgNVHSMEGDAWgBTV9lbLj+iiXGJo0T2UkFvXzpoYxDBW
# BgNVHR8ETzBNMEugSaBHhkVodHRwOi8vY3JsLm1pY3Jvc29mdC5jb20vcGtpL2Ny
# bC9wcm9kdWN0cy9NaWNSb29DZXJBdXRfMjAxMC0wNi0yMy5jcmwwWgYIKwYBBQUH
# AQEETjBMMEoGCCsGAQUFBzAChj5odHRwOi8vd3d3Lm1pY3Jvc29mdC5jb20vcGtp
# L2NlcnRzL01pY1Jvb0NlckF1dF8yMDEwLTA2LTIzLmNydDANBgkqhkiG9w0BAQsF
# AAOCAgEAnVV9/Cqt4SwfZwExJFvhnnJL/Klv6lwUtj5OR2R4sQaTlz0xM7U518Jx
# Nj/aZGx80HU5bbsPMeTCj/ts0aGUGCLu6WZnOlNN3Zi6th542DYunKmCVgADsAW+
# iehp4LoJ7nvfam++Kctu2D9IdQHZGN5tggz1bSNU5HhTdSRXud2f8449xvNo32X2
# pFaq95W2KFUn0CS9QKC/GbYSEhFdPSfgQJY4rPf5KYnDvBewVIVCs/wMnosZiefw
# C2qBwoEZQhlSdYo2wh3DYXMuLGt7bj8sCXgU6ZGyqVvfSaN0DLzskYDSPeZKPmY7
# T7uG+jIa2Zb0j/aRAfbOxnT99kxybxCrdTDFNLB62FD+CljdQDzHVG2dY3RILLFO
# Ry3BFARxv2T5JL5zbcqOCb2zAVdJVGTZc9d/HltEAY5aGZFrDZ+kKNxnGSgkujhL
# mm77IVRrakURR6nxt67I6IleT53S0Ex2tVdUCbFpAUR+fKFhbHP+CrvsQWY9af3L
# wUFJfn6Tvsv4O+S3Fb+0zj6lMVGEvL8CwYKiexcdFYmNcP7ntdAoGokLjzbaukz5
# m/8K6TT4JDVnK+ANuOaMmdbhIurwJ0I9JZTmdHRbatGePu1+oDEzfbzL6Xu/OHBE
# 0ZDxyKs6ijoIYn/ZcGNTTY3ugm2lBRDBcQZqELQdVTNYs6FwZvKhggLLMIICNAIB
# ATCB+KGB0KSBzTCByjELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldhc2hpbmd0b24x
# EDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBDb3Jwb3JhdGlv
# bjElMCMGA1UECxMcTWljcm9zb2Z0IEFtZXJpY2EgT3BlcmF0aW9uczEmMCQGA1UE
# CxMdVGhhbGVzIFRTUyBFU046M0U3QS1FMzU5LUEyNUQxJTAjBgNVBAMTHE1pY3Jv
# c29mdCBUaW1lLVN0YW1wIFNlcnZpY2WiIwoBATAHBgUrDgMCGgMVABMGuI1o2nGz
# mFPvvecnSe4UgouYoIGDMIGApH4wfDELMAkGA1UEBhMCVVMxEzARBgNVBAgTCldh
# c2hpbmd0b24xEDAOBgNVBAcTB1JlZG1vbmQxHjAcBgNVBAoTFU1pY3Jvc29mdCBD
# b3Jwb3JhdGlvbjEmMCQGA1UEAxMdTWljcm9zb2Z0IFRpbWUtU3RhbXAgUENBIDIw
# MTAwDQYJKoZIhvcNAQEFBQACBQDl/2jcMCIYDzIwMjIwNDEyMTA1NjI4WhgPMjAy
# MjA0MTMxMDU2MjhaMHQwOgYKKwYBBAGEWQoEATEsMCowCgIFAOX/aNwCAQAwBwIB
# AAICBVQwBwIBAAICEqMwCgIFAOYAulwCAQAwNgYKKwYBBAGEWQoEAjEoMCYwDAYK
# KwYBBAGEWQoDAqAKMAgCAQACAwehIKEKMAgCAQACAwGGoDANBgkqhkiG9w0BAQUF
# AAOBgQC8lwm92geaToviVAYj1Arm+TsxQr7DlFfyGWvAJ9N4tb7oVkinT9C0zD8g
# Ca0nYNsdGa+tCdL8cAuiMkrlLV4cu8LFYhY4kH3YMAyK//z2O6aon/OraUKlQSr9
# PYa8OZV92Phd37sN8/Jwn2pYR3gnCeGkiY2XQWDNA5D2jwaOoDGCBA0wggQJAgEB
# MIGTMHwxCzAJBgNVBAYTAlVTMRMwEQYDVQQIEwpXYXNoaW5ndG9uMRAwDgYDVQQH
# EwdSZWRtb25kMR4wHAYDVQQKExVNaWNyb3NvZnQgQ29ycG9yYXRpb24xJjAkBgNV
# BAMTHU1pY3Jvc29mdCBUaW1lLVN0YW1wIFBDQSAyMDEwAhMzAAABoOm7jLsOotF6
# AAEAAAGgMA0GCWCGSAFlAwQCAQUAoIIBSjAaBgkqhkiG9w0BCQMxDQYLKoZIhvcN
# AQkQAQQwLwYJKoZIhvcNAQkEMSIEIE/GO3l7sHReU3FkUmY3q6lA/e/FNPzyQ3la
# aef0XZs5MIH6BgsqhkiG9w0BCRACLzGB6jCB5zCB5DCBvQQgL0eKPGhlBCISLd0R
# L7MdPrL5zOlomoGuUj2iuIOvtNMwgZgwgYCkfjB8MQswCQYDVQQGEwJVUzETMBEG
# A1UECBMKV2FzaGluZ3RvbjEQMA4GA1UEBxMHUmVkbW9uZDEeMBwGA1UEChMVTWlj
# cm9zb2Z0IENvcnBvcmF0aW9uMSYwJAYDVQQDEx1NaWNyb3NvZnQgVGltZS1TdGFt
# cCBQQ0EgMjAxMAITMwAAAaDpu4y7DqLRegABAAABoDAiBCCAy+QbCPR98O9qBun9
# AviOWByoPz/6xLq9aT9iipG75DANBgkqhkiG9w0BAQsFAASCAgA/tekXjiBxJujO
# Z1+tjK22XURPrtXJDa36d0cd2bpYHxgM81wG+7x9HbgP/hsNPsGM5zROQBITtzo2
# mVtwBXCtIHKpT66N1BT0RavCt5S3KfNjB96+OBHD9rr/Zkq48wImLm8npUJ0RZht
# 6VNE4kp+5zC0JVxG6b+GpL9SV9ZFkSLMwC/nzGKsM0+8XKl+qXhTGydSXrzLI7dG
# IGTtnEHgpI5mevibYdtWBqA6v579rxP6H5T/oorVEYcTdV10I9kVPoS+9Hap03To
# WT7pRbQ0FmR1QvWiaoJl49387lNi0U/71JCXW494ZPbg1FldBiD88CS7kaLuxT7w
# hNt/ZYu423hMfT4O3RtkdYhg2gp17CWkS0sx3jLfRgEgvFHmuYhnRUc6vMvbD0Qz
# e1GnEDGJSwPIEIqY+Do7z3OtaA2UNb3f6zekkf1JahoGetvShG2NexdgZ2gqnL7k
# +Vr+J9KhYr0Ubj5cB6AqsORxBi8Slb5WSlvoRbRBwU8jwZa9azlXsx46oprsbNEZ
# rbs11W5z7y9koK+5qg1gi7sXFuu2yO+lx967IPyWoLqeKGZi4mT6aPOkm2g741GJ
# rojr1Z5Qld8eOOKZPlVMlqEk7jW6csL7gl9/Z6lT2BGLtQVppbr4G0EV9YtIfdlY
# 58iqEEnun//7B2hxoO5LJUiMdMiF1A==
# SIG # End signature block
