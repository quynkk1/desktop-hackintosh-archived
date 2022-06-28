DefinitionBlock ("", "SSDT", 2, "Apple", "NVMEOFF", 0x00000000)
{
    /* 
        Rename RPxx into your NVME Device assigned in DSDT    
        
        Example if you want to disable NVME Controller which named is
        _SB_.PCI0.RP01.PXSX, you need to rename from RPxx (below)
        into RP01
    */
    
    External (_SB_.PCI0.RPxx.PXSX, DeviceObj)

    Method (_SB.PCI0.RPxx.PXSX._STA, 0, NotSerialized)
    {
        If (_OSI ("Darwin"))
        {
            Return (Zero)
        }
    }

}

