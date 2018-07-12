      subroutine fp_close
      
      use parm
      
      if(unit_wetlandup_ara > 0) close(unit_wetlandup_ara)
      if(unit_wetlandup_vol > 0) close(unit_wetlandup_vol)
      if(unit_wetlandfp_ara > 0) close(unit_wetlandfp_ara)
      if(unit_wetlandfp_vol > 0) close(unit_wetlandfp_vol)
      if(unit_manning_fpn > 0) close(unit_manning_fpn)
      if(unit_wetdrain_frc > 0) close(unit_wetdrain_frc)
      
      if(unit_floodplain_wdh > 0) close(unit_floodplain_wdh)
      if(unit_manning_fpn > 0) close(unit_manning_fpn)
 
      
      end subroutine