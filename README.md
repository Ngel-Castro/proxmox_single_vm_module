## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_proxmox"></a> [proxmox](#requirement\_proxmox) | 3.0.1-rc1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_proxmox"></a> [proxmox](#provider\_proxmox) | 3.0.1-rc1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [proxmox_vm_qemu.vm](https://registry.terraform.io/providers/telmate/proxmox/3.0.1-rc1/docs/resources/vm_qemu) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_full_clone"></a> [full\_clone](#input\_full\_clone) | If you required full clone or not | `bool` | `false` | no |
| <a name="input_memory"></a> [memory](#input\_memory) | Memory for VM | `number` | `2048` | no |
| <a name="input_name"></a> [name](#input\_name) | Name of the VM | `string` | n/a | yes |
| <a name="input_network_bridge"></a> [network\_bridge](#input\_network\_bridge) | Network bridge for VM | `string` | `"vmbr0"` | no |
| <a name="input_proxmox_host"></a> [proxmox\_host](#input\_proxmox\_host) | Value for proxmox cluster/server | `string` | `"https://192.168.0.131:8006/api2/json"` | no |
| <a name="input_proxmox_token_id"></a> [proxmox\_token\_id](#input\_proxmox\_token\_id) | Proxmox Token user@pam!token\_id | `string` | `"terraform-prov@pve!terraform"` | no |
| <a name="input_proxmox_token_secret"></a> [proxmox\_token\_secret](#input\_proxmox\_token\_secret) | Proxmox token secret | `string` | n/a | yes |
| <a name="input_storage"></a> [storage](#input\_storage) | Storage location in PROXMOX node | `string` | `"samsung_ssd"` | no |
| <a name="input_target_node"></a> [target\_node](#input\_target\_node) | Proxmox target node | `string` | n/a | yes |
| <a name="input_template_name"></a> [template\_name](#input\_template\_name) | If you required full clone or not | `string` | `"cluster-template"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vm_id"></a> [vm\_id](#output\_vm\_id) | The of the Virtual Machine recently created |
| <a name="output_vm_ip"></a> [vm\_ip](#output\_vm\_ip) | The IP address of the VM |
