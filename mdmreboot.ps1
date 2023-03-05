#Declare variables
$namespaceName = "root\cimv2\mdm\dmmap"
$className = "MDM_Reboot"
$parentID = "./Vendor/MSFT/Reboot"
$instanceID = "Reboot"
$methodName = "RebootNowMethod"

#Get a specific instance
$instanceObject = Get-CimInstance -Namespace $namespaceName -ClassName $className -Filter "ParentID='$parentID' and InstanceID='$instanceID'"

#Trigger specific method
Invoke-CimMethod -InputObject $instanceObject -MethodName $methodName
