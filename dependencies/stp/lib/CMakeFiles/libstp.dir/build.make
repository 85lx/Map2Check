# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/map2check/devel_tool/map_src_on_docker/dependencies/stp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/map2check/devel_tool/map_src_on_docker/dependencies/stp

# Include any dependencies generated for this target.
include lib/CMakeFiles/libstp.dir/depend.make

# Include the progress variables for this target.
include lib/CMakeFiles/libstp.dir/progress.make

# Include the compile flags for this target's objects.
include lib/CMakeFiles/libstp.dir/flags.make

# Object files for target libstp
libstp_OBJECTS =

# External object files for target libstp
libstp_EXTERNAL_OBJECTS = \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Globals/CMakeFiles/stpglobals.dir/Globals.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/AST/CMakeFiles/AST.dir/ASTKind.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/AST/CMakeFiles/AST.dir/ASTInterior.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/AST/CMakeFiles/AST.dir/ASTNode.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/AST/CMakeFiles/AST.dir/ASTUtil.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/AST/CMakeFiles/AST.dir/ASTBVConst.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/AST/CMakeFiles/AST.dir/ASTmisc.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/AST/CMakeFiles/AST.dir/ASTSymbol.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/AST/CMakeFiles/AST.dir/MutableASTNode.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/AST/CMakeFiles/AST.dir/NodeFactory/HashingNodeFactory.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/AST/CMakeFiles/AST.dir/NodeFactory/NodeFactory.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/AST/CMakeFiles/AST.dir/NodeFactory/SimplifyingNodeFactory.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/AST/CMakeFiles/AST.dir/NodeFactory/TypeChecker.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/STPManager/CMakeFiles/stpmgr.dir/STP.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/STPManager/CMakeFiles/stpmgr.dir/STPManager.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/AbstractionRefinement.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/CounterExample.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/ArrayTransformer.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/ToSat/CMakeFiles/tosat.dir/BitBlaster.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/ToSat/CMakeFiles/tosat.dir/ToSATBase.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/ToSat/CMakeFiles/tosat.dir/AIG/BBNodeManagerAIG.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/ToSat/CMakeFiles/tosat.dir/AIG/ToCNFAIG.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/ToSat/CMakeFiles/tosat.dir/AIG/ToSATAIG.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ClauseList.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ASTtoCNF.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ToSAT.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Sat/CMakeFiles/sat.dir/MinisatCore.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Sat/CMakeFiles/sat.dir/SimplifyingMinisat.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Simplifier/CMakeFiles/simplifier.dir/BVSolver.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Simplifier/CMakeFiles/simplifier.dir/consteval.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Simplifier/CMakeFiles/simplifier.dir/PropagateEqualities.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Simplifier/CMakeFiles/simplifier.dir/RemoveUnconstrained.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Simplifier/CMakeFiles/simplifier.dir/Simplifier.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Simplifier/CMakeFiles/simplifier.dir/SubstitutionMap.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Simplifier/CMakeFiles/simplifier.dir/VariablesInExpression.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Simplifier/CMakeFiles/simplifier.dir/DifficultyScore.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Simplifier/CMakeFiles/simplifier.dir/UseITEContext.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Simplifier/CMakeFiles/simplifier.dir/FindPureLiterals.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Simplifier/CMakeFiles/simplifier.dir/AIGSimplifyPropositionalCore.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Simplifier/CMakeFiles/simplifier.dir/constantBitP/ConstantBitP_Arithmetic.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Simplifier/CMakeFiles/simplifier.dir/constantBitP/ConstantBitP_Boolean.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Simplifier/CMakeFiles/simplifier.dir/constantBitP/ConstantBitP_Comparison.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Simplifier/CMakeFiles/simplifier.dir/constantBitP/ConstantBitP_Division.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Simplifier/CMakeFiles/simplifier.dir/constantBitP/ConstantBitP_MaxPrecision.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Simplifier/CMakeFiles/simplifier.dir/constantBitP/ConstantBitP_Multiplication.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Simplifier/CMakeFiles/simplifier.dir/constantBitP/ConstantBitPropagation.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Simplifier/CMakeFiles/simplifier.dir/constantBitP/ConstantBitP_Shifting.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Simplifier/CMakeFiles/simplifier.dir/constantBitP/ConstantBitP_TransferFunctions.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Simplifier/CMakeFiles/simplifier.dir/constantBitP/ConstantBitP_Utility.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Simplifier/CMakeFiles/simplifier.dir/constantBitP/FixedBits.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-constbv/CMakeFiles/constantbv.dir/constantbv.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigCheck.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigDfs.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigFanout.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigMan.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigMem.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigMffc.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigObj.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigOper.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigOrder.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigPart.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigRepr.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigRet.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigScl.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigSeq.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigShow.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigTable.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigTime.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigTiming.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigTruth.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigTsim.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigUtil.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigWin.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/cnf/cnfCore.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/cnf/cnfCut.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/cnf/cnfData.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/cnf/cnfMan.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/cnf/cnfMap.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/cnf/cnfPost.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/cnf/cnfUtil.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/cnf/cnfWrite.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/dar/darBalance.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/dar/darCore.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/dar/darCut.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/dar/darData.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/dar/darLib.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/dar/darMan.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/dar/darPrec.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/dar/darRefact.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/dar/darScript.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/kit/kitAig.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/kit/kitGraph.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/kit/kitIsop.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/kit/kitSop.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/extlib-abc/CMakeFiles/abc.dir/aig/kit/kitTruth.c.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Interface/CMakeFiles/cinterface.dir/c_interface.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Interface/CMakeFiles/cppinterface.dir/cpp_interface.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Parser/CMakeFiles/parser.dir/LetMgr.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Parser/CMakeFiles/parser.dir/lexcvc.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Parser/CMakeFiles/parser.dir/parsecvc.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Parser/CMakeFiles/parser.dir/lexsmt2.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Parser/CMakeFiles/parser.dir/parsesmt2.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Parser/CMakeFiles/parser.dir/lexsmt.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Parser/CMakeFiles/parser.dir/parsesmt.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Printer/CMakeFiles/printer.dir/AssortedPrinters.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Printer/CMakeFiles/printer.dir/BenchPrinter.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Printer/CMakeFiles/printer.dir/CPrinter.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Printer/CMakeFiles/printer.dir/dotPrinter.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Printer/CMakeFiles/printer.dir/GDLPrinter.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Printer/CMakeFiles/printer.dir/LispPrinter.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Printer/CMakeFiles/printer.dir/PLPrinter.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Printer/CMakeFiles/printer.dir/SMTLIB1Printer.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Printer/CMakeFiles/printer.dir/SMTLIB2Printer.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Printer/CMakeFiles/printer.dir/SMTLIBPrinter.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Util/CMakeFiles/util.dir/GitSHA1.cpp.o" \
"/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/Util/CMakeFiles/util.dir/RunTimes.cpp.o"

lib/libstp.a: lib/Globals/CMakeFiles/stpglobals.dir/Globals.cpp.o
lib/libstp.a: lib/AST/CMakeFiles/AST.dir/ASTKind.cpp.o
lib/libstp.a: lib/AST/CMakeFiles/AST.dir/ASTInterior.cpp.o
lib/libstp.a: lib/AST/CMakeFiles/AST.dir/ASTNode.cpp.o
lib/libstp.a: lib/AST/CMakeFiles/AST.dir/ASTUtil.cpp.o
lib/libstp.a: lib/AST/CMakeFiles/AST.dir/ASTBVConst.cpp.o
lib/libstp.a: lib/AST/CMakeFiles/AST.dir/ASTmisc.cpp.o
lib/libstp.a: lib/AST/CMakeFiles/AST.dir/ASTSymbol.cpp.o
lib/libstp.a: lib/AST/CMakeFiles/AST.dir/MutableASTNode.cpp.o
lib/libstp.a: lib/AST/CMakeFiles/AST.dir/NodeFactory/HashingNodeFactory.cpp.o
lib/libstp.a: lib/AST/CMakeFiles/AST.dir/NodeFactory/NodeFactory.cpp.o
lib/libstp.a: lib/AST/CMakeFiles/AST.dir/NodeFactory/SimplifyingNodeFactory.cpp.o
lib/libstp.a: lib/AST/CMakeFiles/AST.dir/NodeFactory/TypeChecker.cpp.o
lib/libstp.a: lib/STPManager/CMakeFiles/stpmgr.dir/STP.cpp.o
lib/libstp.a: lib/STPManager/CMakeFiles/stpmgr.dir/STPManager.cpp.o
lib/libstp.a: lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/AbstractionRefinement.cpp.o
lib/libstp.a: lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/CounterExample.cpp.o
lib/libstp.a: lib/AbsRefineCounterExample/CMakeFiles/abstractionrefinement.dir/ArrayTransformer.cpp.o
lib/libstp.a: lib/ToSat/CMakeFiles/tosat.dir/BitBlaster.cpp.o
lib/libstp.a: lib/ToSat/CMakeFiles/tosat.dir/ToSATBase.cpp.o
lib/libstp.a: lib/ToSat/CMakeFiles/tosat.dir/AIG/BBNodeManagerAIG.cpp.o
lib/libstp.a: lib/ToSat/CMakeFiles/tosat.dir/AIG/ToCNFAIG.cpp.o
lib/libstp.a: lib/ToSat/CMakeFiles/tosat.dir/AIG/ToSATAIG.cpp.o
lib/libstp.a: lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ClauseList.cpp.o
lib/libstp.a: lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ASTtoCNF.cpp.o
lib/libstp.a: lib/ToSat/CMakeFiles/tosat.dir/ASTNode/ToSAT.cpp.o
lib/libstp.a: lib/Sat/CMakeFiles/sat.dir/MinisatCore.cpp.o
lib/libstp.a: lib/Sat/CMakeFiles/sat.dir/SimplifyingMinisat.cpp.o
lib/libstp.a: lib/Simplifier/CMakeFiles/simplifier.dir/BVSolver.cpp.o
lib/libstp.a: lib/Simplifier/CMakeFiles/simplifier.dir/consteval.cpp.o
lib/libstp.a: lib/Simplifier/CMakeFiles/simplifier.dir/PropagateEqualities.cpp.o
lib/libstp.a: lib/Simplifier/CMakeFiles/simplifier.dir/RemoveUnconstrained.cpp.o
lib/libstp.a: lib/Simplifier/CMakeFiles/simplifier.dir/Simplifier.cpp.o
lib/libstp.a: lib/Simplifier/CMakeFiles/simplifier.dir/SubstitutionMap.cpp.o
lib/libstp.a: lib/Simplifier/CMakeFiles/simplifier.dir/VariablesInExpression.cpp.o
lib/libstp.a: lib/Simplifier/CMakeFiles/simplifier.dir/DifficultyScore.cpp.o
lib/libstp.a: lib/Simplifier/CMakeFiles/simplifier.dir/UseITEContext.cpp.o
lib/libstp.a: lib/Simplifier/CMakeFiles/simplifier.dir/FindPureLiterals.cpp.o
lib/libstp.a: lib/Simplifier/CMakeFiles/simplifier.dir/AIGSimplifyPropositionalCore.cpp.o
lib/libstp.a: lib/Simplifier/CMakeFiles/simplifier.dir/constantBitP/ConstantBitP_Arithmetic.cpp.o
lib/libstp.a: lib/Simplifier/CMakeFiles/simplifier.dir/constantBitP/ConstantBitP_Boolean.cpp.o
lib/libstp.a: lib/Simplifier/CMakeFiles/simplifier.dir/constantBitP/ConstantBitP_Comparison.cpp.o
lib/libstp.a: lib/Simplifier/CMakeFiles/simplifier.dir/constantBitP/ConstantBitP_Division.cpp.o
lib/libstp.a: lib/Simplifier/CMakeFiles/simplifier.dir/constantBitP/ConstantBitP_MaxPrecision.cpp.o
lib/libstp.a: lib/Simplifier/CMakeFiles/simplifier.dir/constantBitP/ConstantBitP_Multiplication.cpp.o
lib/libstp.a: lib/Simplifier/CMakeFiles/simplifier.dir/constantBitP/ConstantBitPropagation.cpp.o
lib/libstp.a: lib/Simplifier/CMakeFiles/simplifier.dir/constantBitP/ConstantBitP_Shifting.cpp.o
lib/libstp.a: lib/Simplifier/CMakeFiles/simplifier.dir/constantBitP/ConstantBitP_TransferFunctions.cpp.o
lib/libstp.a: lib/Simplifier/CMakeFiles/simplifier.dir/constantBitP/ConstantBitP_Utility.cpp.o
lib/libstp.a: lib/Simplifier/CMakeFiles/simplifier.dir/constantBitP/FixedBits.cpp.o
lib/libstp.a: lib/extlib-constbv/CMakeFiles/constantbv.dir/constantbv.cpp.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigCheck.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigDfs.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigFanout.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigMan.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigMem.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigMffc.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigObj.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigOper.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigOrder.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigPart.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigRepr.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigRet.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigScl.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigSeq.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigShow.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigTable.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigTime.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigTiming.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigTruth.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigTsim.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigUtil.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/aig/aigWin.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/cnf/cnfCore.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/cnf/cnfCut.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/cnf/cnfData.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/cnf/cnfMan.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/cnf/cnfMap.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/cnf/cnfPost.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/cnf/cnfUtil.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/cnf/cnfWrite.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/dar/darBalance.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/dar/darCore.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/dar/darCut.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/dar/darData.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/dar/darLib.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/dar/darMan.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/dar/darPrec.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/dar/darRefact.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/dar/darScript.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/kit/kitAig.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/kit/kitGraph.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/kit/kitIsop.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/kit/kitSop.c.o
lib/libstp.a: lib/extlib-abc/CMakeFiles/abc.dir/aig/kit/kitTruth.c.o
lib/libstp.a: lib/Interface/CMakeFiles/cinterface.dir/c_interface.cpp.o
lib/libstp.a: lib/Interface/CMakeFiles/cppinterface.dir/cpp_interface.cpp.o
lib/libstp.a: lib/Parser/CMakeFiles/parser.dir/LetMgr.cpp.o
lib/libstp.a: lib/Parser/CMakeFiles/parser.dir/lexcvc.cpp.o
lib/libstp.a: lib/Parser/CMakeFiles/parser.dir/parsecvc.cpp.o
lib/libstp.a: lib/Parser/CMakeFiles/parser.dir/lexsmt2.cpp.o
lib/libstp.a: lib/Parser/CMakeFiles/parser.dir/parsesmt2.cpp.o
lib/libstp.a: lib/Parser/CMakeFiles/parser.dir/lexsmt.cpp.o
lib/libstp.a: lib/Parser/CMakeFiles/parser.dir/parsesmt.cpp.o
lib/libstp.a: lib/Printer/CMakeFiles/printer.dir/AssortedPrinters.cpp.o
lib/libstp.a: lib/Printer/CMakeFiles/printer.dir/BenchPrinter.cpp.o
lib/libstp.a: lib/Printer/CMakeFiles/printer.dir/CPrinter.cpp.o
lib/libstp.a: lib/Printer/CMakeFiles/printer.dir/dotPrinter.cpp.o
lib/libstp.a: lib/Printer/CMakeFiles/printer.dir/GDLPrinter.cpp.o
lib/libstp.a: lib/Printer/CMakeFiles/printer.dir/LispPrinter.cpp.o
lib/libstp.a: lib/Printer/CMakeFiles/printer.dir/PLPrinter.cpp.o
lib/libstp.a: lib/Printer/CMakeFiles/printer.dir/SMTLIB1Printer.cpp.o
lib/libstp.a: lib/Printer/CMakeFiles/printer.dir/SMTLIB2Printer.cpp.o
lib/libstp.a: lib/Printer/CMakeFiles/printer.dir/SMTLIBPrinter.cpp.o
lib/libstp.a: lib/Util/CMakeFiles/util.dir/GitSHA1.cpp.o
lib/libstp.a: lib/Util/CMakeFiles/util.dir/RunTimes.cpp.o
lib/libstp.a: lib/CMakeFiles/libstp.dir/build.make
lib/libstp.a: lib/CMakeFiles/libstp.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/map2check/devel_tool/map_src_on_docker/dependencies/stp/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Linking CXX static library libstp.a"
	cd /home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib && $(CMAKE_COMMAND) -P CMakeFiles/libstp.dir/cmake_clean_target.cmake
	cd /home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/libstp.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
lib/CMakeFiles/libstp.dir/build: lib/libstp.a

.PHONY : lib/CMakeFiles/libstp.dir/build

lib/CMakeFiles/libstp.dir/requires:

.PHONY : lib/CMakeFiles/libstp.dir/requires

lib/CMakeFiles/libstp.dir/clean:
	cd /home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib && $(CMAKE_COMMAND) -P CMakeFiles/libstp.dir/cmake_clean.cmake
.PHONY : lib/CMakeFiles/libstp.dir/clean

lib/CMakeFiles/libstp.dir/depend:
	cd /home/map2check/devel_tool/map_src_on_docker/dependencies/stp && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/map2check/devel_tool/map_src_on_docker/dependencies/stp /home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib /home/map2check/devel_tool/map_src_on_docker/dependencies/stp /home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib /home/map2check/devel_tool/map_src_on_docker/dependencies/stp/lib/CMakeFiles/libstp.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : lib/CMakeFiles/libstp.dir/depend

