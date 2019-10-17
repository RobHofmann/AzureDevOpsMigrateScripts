param (
    [Parameter(Mandatory=$true)][string]$File
    )

$hashtable = @{ 
    "75a43dc1-8939-427c-b1e6-b5f4976dedc4" = "c547c820-a224-4606-91e8-eb63fb1f4d08";
    "b1858d9a-8b0e-495d-9b05-6ec02fc9764b" = "0c79509d-d864-41dc-8ba9-6c42b6303bc8";
    "362f69e8-f8d8-47f0-8841-8201f532ed4b" = "9f8da2da-e025-4309-b07a-d850d93be9ac";
    "c5bc973b-375b-413e-944d-db15f77919c9" = "8389abff-7a77-47d2-9eca-34e85d02de3f";
    "0436f56c-6859-4b19-ab0e-51fba1020bcc" = "11d113c3-7e57-46b4-9adc-274f86b24747";
    "6361bf0f-40c3-4866-808a-e3e2e0abcaa9" = "a8070d92-7620-43c3-a283-eacb3a19e534";
    "8bb648c9-f8da-485e-8131-218c826b4a44" = "e7a000cb-b26b-435d-924a-b0ab84fd2d2c";
    "2bf6841f-49e8-47e5-9db6-e36c32484f4a" = "b5f5d90a-9c0b-4ccf-a4c6-66500c804179";
    "cd741cc7-c959-441c-8c17-ce27fae237c1" = "1416f7c0-a95f-441f-9222-33fe877142c0";
    "91ab1c11-8456-41db-b26c-2d78f442529d" = "943f713e-0e4c-4236-8831-0d2f03443b2a";
    "3a39d45e-6ee4-49b2-bbc4-5ee2b1ce99c0" = "ccd7da37-c7ac-4429-b55f-e2433b03c3ac";
    "a960292d-3fe3-481e-86bc-58f356dbae95" = "fa077825-b444-4361-b537-f5678d64f22c";
    "ab1fbea4-0474-4873-acb7-43a639d84334" = "0511373c-17e0-4b08-99f1-0055f2a3ddc0";
    "717bfccf-7e57-431d-84ed-d8b0f3ea7b36" = "10d06780-d742-4f1d-9afc-bd550d44e9ba";
    "a6f8fd6f-c74e-4fca-8b3c-609a2522da2f" = "f9b1ed4d-199c-4355-9a7f-3d6bb43eddb7";
    "f1b80b12-9c5b-4eee-8826-b5bf1df143b7" = "1b816c16-8072-4a02-b97f-55d75b5e250c";
    "8a5cc873-6168-462b-ac52-3ecd72bf0440" = "cc7f837f-d61f-4723-bc02-8c7b803ad8c9";
    "2339dcd5-e081-49bc-9334-fb698c7135e6" = "a6c9b57d-f508-43ce-869d-332356a47a48";
    "38405268-6e6d-4a78-85f5-ea42d0d3de34" = "96a74401-95dd-4a00-a31c-5cce9d97191c";
    "0a07952f-3780-4e89-a32d-b211a2271abf" = "b002a390-394a-4d59-85b5-643b46086007";
    "2d182a42-e865-422b-a4e6-c65365038710" = "ed34d209-a66d-49af-8dd0-8be5809f5497";
    "1c28c804-00c3-4665-bd01-41e12d77cc8a" = "4b88f6e8-2e28-4411-9d5f-2969b9d70e27";
    "7f7d6fe3-7dd6-4f31-a5db-39b75e75b612" = "2c06e4df-320c-40b3-b965-f0af90de323e";
    "d8a0c960-0ffe-44c0-9a1d-9998948692e2" = "a3b90b36-1ba5-490b-8021-6d06d98e18f5";
    "8f69261c-67d2-4f29-9a1b-e54fd8a0d17c" = "40ce7abb-063a-48d7-80e5-5e0687c4b88a";
    "318a9b07-ee4c-41cb-8141-c0409cc1a7b0" = "a156d107-e5f6-436e-8a2e-13e30f50ed32";
    "245f3f24-dac0-49e2-b4cf-0d71f5d4271d" = "d8742338-45ad-4f0f-a91a-3cc5c659c116";
    "10602b14-b891-4a8c-ab24-bee2a2ba6ad0" = "f45c1e13-2eec-4a5a-8ed5-156be7f369ca";
    "7d0364b7-5613-4791-a0d2-92b3c0ef43f3" = "f8db1020-00f3-4453-bc08-13de133381e0";
}

$fileContent = Get-Content -Path $File

foreach($hashKey in $hashtable.Keys)
{
    $fileContent = $fileContent -replace $hashKey,$hashtable[$hashKey]
    Write-Host "Replaced $hashKey with $($hashtable[$hashKey])"
}

$fileContent | Out-File -FilePath $File