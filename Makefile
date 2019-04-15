XCODE_USER_TEMPLATES_DIR=~/Library/Developer/Xcode/Templates/File\ Templates
MODULE_TEMPLATES_DIR=ModuleTemplates

install_templates:
	rm -R -f $(XCODE_USER_TEMPLATES_DIR)/$(MODULE_TEMPLATES_DIR)
	mkdir -p $(XCODE_USER_TEMPLATES_DIR)
	cp -R -f $(MODULE_TEMPLATES_DIR) $(XCODE_USER_TEMPLATES_DIR)

uninstall_templates:
	rm -R $(XCODE_USER_TEMPLATES_DIR)/$(MODULE_TEMPLATES_DIR)
