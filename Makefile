DIST_DIR := dist
SKILLS := deai-humanize zhonglaonian_中老年 yuju_豫剧 shouchaobao_手抄报

.PHONY: dist clean

dist:
	@rm -rf $(DIST_DIR)
	@mkdir -p $(DIST_DIR)
	@for skill in $(SKILLS); do \
		echo "==> $$skill"; \
		mkdir -p $(DIST_DIR)/$$skill; \
		cp $$skill/SKILL.md $(DIST_DIR)/$$skill/ 2>/dev/null || true; \
		cp -r $$skill/references/ $(DIST_DIR)/$$skill/references 2>/dev/null || true; \
		cp -r $$skill/scripts/ $(DIST_DIR)/$$skill/scripts 2>/dev/null || true; \
	done
	@echo "==> done"

clean:
	rm -rf $(DIST_DIR)