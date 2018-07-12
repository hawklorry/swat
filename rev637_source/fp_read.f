      subroutine fp_read
      
      use parm
      
      if(unit_wetlandup_ara > 0) then 
          read(unit_wetlandup_ara,*) wetlandup_ara(i)
      end if
      
      if(unit_wetlandup_vol > 0) then
          read(unit_wetlandup_vol,*) wetlandup_vol(i)
      end if
      
      if(unit_wetlandfp_ara > 0) then
          read(unit_wetlandfp_ara,*) wetlandfp_ara(i)
      end if
      
      if(unit_wetlandfp_vol > 0) then
          read(unit_wetlandfp_vol,*) wetlandfp_vol(i)
      end if
      
      if(unit_floodplain_prp > 0) then
          read(unit_floodplain_prp,*) floodplain_prp(i)
      end if
      
      if(unit_wetdrain_frc > 0) then 
          read(unit_wetdrain_frc,*) wetdrain_frc(i)
      end if
      
      if(unit_manning_fpn > 0) then
          read(unit_manning_fpn, *) manning_fpn(i)
      end if
      
      if(unit_floodplain_wdh > 0) then
          read(unit_floodplain_wdh,*) floodplain_wdh(i)
      end if      

      
     !! !!for test only here
     !! write(20081204,5000) wetlandup_ara(i), wetlandup_vol(i), 
     !!& wetlandfp_ara(i), wetlandfp_vol(i), floodplain_prp(i),
     !!& wetdrain_frc(i), floodplain_wdh(i), manning_fpn(i)
      
      return
 5000 format (8f12.4)
      
      end subroutine