      !!open channel floodplain files
      subroutine fp_open
      
      use parm
      
      logical hasfile1, hasfile2, hasfile3, hasfile4, hasfile5, hasfile6
      
      !!all the required file must all exist for the new algorithm to be used
      inquire(file = "wetlandup.ara", exist = hasfile1)
      inquire(file = "wetlandup.vol", exist = hasfile2)
      inquire(file = "wetlandfp.ara", exist = hasfile3)
      inquire(file = "wetlandfp.vol", exist = hasfile4)
      inquire(file = "floodplain.prp", exist = hasfile5)
      inquire(file = "wetdrain.frc", exist = hasfile6)
      
      if( hasfile1 .and.
     &    hasfile2 .and.
     &    hasfile3 .and.
     &    hasfile4 .and.
     &    hasfile5 .and.
     &    hasfile6) then
          
          unit_wetlandup_ara = 801
          unit_wetlandup_vol = 802
          unit_wetlandfp_ara = 803
          unit_wetlandfp_vol = 804
          unit_floodplain_prp = 805
          unit_wetdrain_frc = 806         
          
          open(unit_wetlandup_ara, file = "wetlandup.ara")
          open(unit_wetlandup_vol, file = "wetlandup.vol")
          open(unit_wetlandfp_ara, file = "wetlandfp.ara")
          open(unit_wetlandfp_vol, file = "wetlandfp.vol")
          open(unit_floodplain_prp, file = "floodplain.prp")
          open(unit_wetdrain_frc, file = "wetdrain.frc")
      end if
     
       !!these two files will be read whenever it exist
       inquire(file="floodplain.wdh",exist=hasfile1)
       if(hasfile1) then
           unit_floodplain_wdh = 807
           open(unit_floodplain_wdh, file = "floodplain.wdh")
       end if
       
       inquire(file="manning.fpn",exist=hasfile1)
       if(hasfile1) then
           unit_manning_fpn = 808
           open(unit_manning_fpn, file = "manning.fpn")
       end if
      
      end subroutine