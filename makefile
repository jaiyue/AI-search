# 指定 Python 脚本
# SCRIPT = AlgAbasic.py
# SCRIPT = AlgBbasic.py
# SCRIPT = AlgAenhanced.py
SCRIPT = AlgBenhanced.py


# 数据文件列表
DATAFILES = AISearchfile012.txt AISearchfile017.txt AISearchfile021.txt AISearchfile026.txt AISearchfile042.txt AISearchfile048.txt AISearchfile058.txt AISearchfile175.txt AISearchfile180.txt AISearchfile535.txt

# 默认运行目标
.PHONY: run
run:
	@echo "Running all experiments..."
	@for file in $(DATAFILES); do \
		echo "Processing $$file..."; \
		python $(SCRIPT) $$file; \
	done

# 清理中间生成的文件，包括 .pyc、__pycache__、以及带时间戳的输出
.PHONY: clean
clean:
	@echo "Cleaning up..."
	rm -f *.pyc
	rm -rf __pycache__/
	rm -f AlgBenhanced_AISearchfile*.txt
