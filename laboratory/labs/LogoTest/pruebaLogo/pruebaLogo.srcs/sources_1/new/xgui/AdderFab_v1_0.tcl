# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_static_text $IPINST -name "ip_fab" -text {}
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  ipgui::add_page $IPINST -name "Page 0"


}


