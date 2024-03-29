# Check 64bit xsave/xrstor
	.text
_start:
	xgetbv
	xsetbv

	xsave (%rax)
	xsave (%r8)
	xsave (%r8, %rax)
	xsave (%rax, %r8)
	xsave (%r8, %r15)
	xsave64 (%rax)
	xsave64 (%r8)
	xsave64 (%r8, %rax)
	xsave64 (%rax, %r8)
	xrstor (%rax)
	xrstor (%r8)
	xrstor (%r8, %rax)
	xrstor (%rax, %r8)
	xrstor (%r8, %r15)
	xrstor64 (%rax)
	xrstor64 (%r8)
	xrstor64 (%r8, %rax)
	xrstor64 (%rax, %r8)
	xrstor64 (%r8, %r15)

	.intel_syntax noprefix
	xsave [rax]
	xsave [r8]
	xsave [r8+rax*1]
	xsave [rax+r8*1]
	xsave [r8+r15*1]
	xsave64 [rax]
	xsave64 [r8]
	xsave64 [r8+rax*1]
	xsave64 [rax+r8*1]
	xrstor [rax]
	xrstor [r8]
	xrstor [r8+rax*1]
	xrstor [rax+r8*1]
	xrstor [r8+r15*1]
	xrstor64 [rax]
	xrstor64 [r8]
	xrstor64 [r8+rax*1]
	xrstor64 [rax+r8*1]
	xrstor64 [r8+r15*1]
