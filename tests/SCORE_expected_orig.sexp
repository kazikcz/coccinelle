����  >�  �  �  ���   @@�2typedef_double.res@�0shared_brace.res@�+ifields.res@@�.array_size.res@@�)test3.res@�*fields.res@@�)fnret.res@�6const_implicit_iso.res@�&62.res@@�/protoassert.res@�1double_assign.res@@�&b1.res@@�,typedef3.res�
  rINCORRECT:diff token: link VS p_dev
File <COCCIOUTPUTFILE>, line 7, column 29,  charpos = 137
    around = 'link', whole content = 	unsigned int iobase = info->link.io.BasePort1;
File "tests/typedef3.res", line 7, column 29,  charpos = 137
    around = 'p_dev', whole content = 	unsigned int iobase = info->p_dev->io.BasePort1;

    diff (result(<) vs expected_result(>)) = 
    @@ -4,7 +4,7 @@
     
     static void should_work(foo *info)
     {
    -	unsigned int iobase = info->link.io.BasePort1;
    +	unsigned int iobase = info->p_dev->io.BasePort1;
     }
     
     static void does_work(struct bluecard_info_t *info)
�-longline2.res@@�&km.res@�*format.res@�(dbg1.res�
  �INCORRECT:diff token: E VS (
File <COCCIOUTPUTFILE>, line 5, column 2,  charpos = 75
    around = 'E', whole content = 		E = NULL;("PCI");
File "tests/dbg1.res", line 4, column 5,  charpos = 72
    around = '(', whole content = 		DBG("PCI");

    diff (result(<) vs expected_result(>)) = 
    @@ -1,6 +1,6 @@
     
     static inline void alloc_resource(struct pci_dev *dev, int idx)
     {
    -		DBG
    -		E = NULL;("PCI");
    +		DBG("PCI");
    +		E = NULL;
     }
@�-starprint.res@�/change_type.res@@�*strid2.res@�)ifend.res@�,comments.res@@@�&ar.res@@�*ifdef6.res@@�(stm2.res@�'max.res@@�-list_test.res@@�*signed.res@�*ktype2.res@�*elsify.res@@�-minusdots.res@�-doublepos.res@@�1pb_params_iso.res@�0multitypedef.res@�=labels_metastatement_ver1.res@�0double_lines.res@@�2failing_andany.res�
  bINCORRECT:diff token: request_irq VS }
File <COCCIOUTPUTFILE>, line 4, column 8,  charpos = 111
    around = 'request_irq', whole content =         request_irq(irq_flags);
File "tests/failing_andany.res", line 4, column 0,  charpos = 103
    around = '}', whole content = }

    diff (result(<) vs expected_result(>)) = 
    @@ -1,8 +1,6 @@
     static int smc_probe1(struct net_device *dev, void __iomem *ioaddr,
     		      unsigned long irq_flags)
     {
    -        request_irq(irq_flags);
    -	register_netdev(dev);
     }
     
     static int smc_probe2(struct net_device *dev, void __iomem *ioaddr,
�+constty.res@@@�6toplevel_macrostmt.res@�*insdef.res@�+destroy.res@@�)endif.res@@�-const1bis.res@@�(bug1.res@@�(skip.res@�+regexp3.res@�*ifdef1.res@@�,oddifdef.res�
  �INCORRECT:diff token: #else VS x
File <COCCIOUTPUTFILE>, line 10, column 0,  charpos = 114
    around = '#else', whole content = #else
File "tests/oddifdef.res", line 10, column 2,  charpos = 116
    around = 'x', whole content =   x = 0;

    diff (result(<) vs expected_result(>)) = 
    @@ -7,7 +7,9 @@
         a = 5;
     
     #ifdef FOO
    +  x = 0;
     #else
    +  x = 0;
     #endif
     }
     
    @@ -20,7 +22,9 @@
         a = 3;
     
     #ifdef FOO
    +  x = 0;
     #else
    +  x = 0;
     #endif
     }
     
    @@ -33,6 +37,8 @@
     #endif
     
     #ifdef FOO
    +  x = 0;
     #else
    +  x = 0;
     #endif
     }
�+julia10.res@@@�)orexp.res@@�-fieldsmin.res@@�.neststruct.res@�(cast.res@@�*tydisj.res@�*lvalue.res@@�(stm3.res@�*sizeof.res@�/macro_int16.res@@�1bad_ptr_print.res@@�'ws2.res@�+smallfn.res@�2minusdots_ver1.res@@�,longlong.res@�'arg.res@@�,ty_tyexp.res@@�(loop.res@�'log.res@�+expnest.res@�'a3d.res@@�2metastatement2.res@�)fnptr.res@�3delete_function.res@@�)strid.res@@@�(stm5.res@�)ktype.res@@�-iterprint.res@@�.test5_ver1.res@@@�-substruct.res@�.ifdefmeta1.res@@�*threea.res@�(rcu3.res@�/bad_typedef.res@�*addif2.res@@�)test5.res@�)proto.res@�)local.res@@�+condexp.res@@�-inclifdef.res@�,constrem.res@@�-param_end.res@�'com.res@@�)boolr.res@@�-multipath.res@@�)serio.res�
  INCORRECT:diff token: init_MUTEX VS mutex_init
File "tests/serio.c", line 7, column 1,  charpos = 130
    around = 'init_MUTEX', whole content = 	init_MUTEX(&serio->drv_sem);
File "tests/serio.res", line 7, column 1,  charpos = 130
    around = 'mutex_init', whole content = 	mutex_init(&serio->new_lock);

    diff (result(<) vs expected_result(>)) = 
    @@ -4,5 +4,5 @@
     
     static void serio_init_port(struct serio *serio)
     {
    -	init_MUTEX(&serio->drv_sem);
    +	mutex_init(&serio->new_lock);
     }
@�&sp.res@@�.introbrace.res@�)ifzer.res@�+a_and_e.res@@�.wrongcheck.res@�'spl.res@@�(rem1.res@@�*static.res@�(rets.res@�-decl_star.res@@�*topdec.res@�)empty.res@@�)minfn.res@�+deftodo.res@@�)ifadd.res@�(fnty.res@�*badexp.res@@�)type1.res@�(stm7.res�	pPROBLEM
   exn = Failure("Semantic patch uses python, but Coccinelle has been compiled without Python support")
�&ip.res@�,argument.res@@@@�4optional_storage.res@�,iterator.res@@�)test6.res@�-minstruct.res@�)exitp.res�	pPROBLEM
   exn = Failure("Semantic patch uses python, but Coccinelle has been compiled without Python support")
@@@�-multivars.res@�(incl.res@@�-bad_kfree.res@@�+sizeptr.res@�.keep_comma.res@�&b2.res@@�(stm4.res@�)deref.res@@@�)test4.res@�.param_ver1.res@�*braces.res@@�.whitespace.res@�(rptr.res@@@�*remaft.res�	LPROBLEM
   exn = Unix.Unix_error(Unix.ENOENT, "stat", "tests/remaft.cocci")
�)debug.res@�,dc_close.res@@�.pragmatest.res@�6optional_qualifier.res@�5metastatement_for.res@�)const.res@@�(ifbr.res@�(anon.res@@�*test_s.res@�*retest.res@@�.switchdecl.res@�2inherited_ver1.res@@�/three_types.res@�*doundo.res@@�4line_before_last.res@�1comment_brace.res@�,bitfield.res@@�-gotobreak.res@�*change.res@�)bugon.res@@�*xfield.res@�.stm10_ver1.res@�,sizestar.res@�.dropenderr.res@�)decl2.res@@�+typedef.res@�(mdec.res@�'dbg.res�
  INCORRECT:PB parsing only in generated-file
    diff (result(<) vs expected_result(>)) = 
    @@ -4,6 +4,6 @@
     	struct resource *pr, *r = &dev->resource[idx];
     
     	if (pr)
    -		DBG else
    -			pr = NULL;("PCI");
    +		DBG("PCI");
    +	else pr = NULL;
     }
�*comadd.res@@@�*dropbr.res@@�(cptr.res@@�3replace_typedef.res@�-ifreturn4.res@@�,varargs3.res@�*ifdef3.res@@�/topdec_ver2.res@@�&sw.res@�1disjexpr_ver2.res@�,cast_iso.res@@�,varargs2.res@�.proto_ver2.res@�)noret.res@@@�(post.res@�.justremove.res@@�&p9.res�
  �INCORRECT:diff token: v0 VS v2
File <COCCIOUTPUTFILE>, line 1, column 10,  charpos = 10
    around = 'v0', whole content = int f(int v0, int v1, int x) {
File "tests/p9.res", line 1, column 10,  charpos = 10
    around = 'v2', whole content = int f(int v2, int v3, int x) {

    diff (result(<) vs expected_result(>)) = 
    @@ -1,3 +1,3 @@
    -int f(int v0, int v1, int x) {
    +int f(int v2, int v3, int x) {
       return x;
     }
�*notest.res@�0doubleswitch.res@@�0expopt3_ver1.res@@�'unl.res@@�*test12.res@�/longlongint.res@�(ifzz.res@�0a_and_e_ver1.res@@�-type_ver2.res�	�INCORRECT:PB parsing only in generated-file
    diff (result(<) vs expected_result(>)) = 
    @@ -1,5 +1,5 @@
     int foo() {
    -  int[10] *x;
    +  int *x[10];
       return 0;
     }
     
@�0useless_cast.res@�(stm8.res@�.array_init.res@�-addifelse.res@@@�,str_init.res@@�'eb1.res@@�.formatlist.res@�*endpos.res�	TPROBLEM
   exn = Yes_prepare_ocamlcocci.LinkFailure("/tmp/ocaml_cocci_6460ea.cmxs")
@�+badwhen.res@@�,addfield.res@@@�/multiremove.res@�)dropf.res@@@�)ptrar.res@�-addbefore.res@@@�&kr.res@�&if.res@@@�)test1.res@�*mincom.res@�0metaruleelem.res@�'ip2.res@�2int2bool-local.res@@�'sis.res@�.ifdefmeta4.res�	PPROBLEM
   exn = Unix.Unix_error(Unix.ENOENT, "stat", "tests/ifdefmeta4.cocci")
@@�*string.res@�+headers.res@@�*spaces.res@�(noty.res@@�(tdnl.res@�+isotest.res@�.decl_split.res�
  jINCORRECT:diff token: int VS }
File "tests/decl_split.c", line 2, column 8,  charpos = 27
    around = 'int', whole content =         int x, y;
File "tests/decl_split.res", line 2, column 0,  charpos = 19
    around = '}', whole content = }

    diff (result(<) vs expected_result(>)) = 
    @@ -1,3 +1,2 @@
     int func(int i) { 
    -        int x, y;
     }
�/const_array.res@@�,metaline.res@@�8labels_metastatement.res@�+fn_todo.res@�)extra.res�	TPROBLEM
   exn = Yes_prepare_ocamlcocci.LinkFailure("/tmp/ocaml_cocci_628857.cmxs")
�-dropparam.res@�2addbeforeafter.res@@@@�(vpos.res@�6pb_distribute_type.res�	�INCORRECT:PB parsing only in generated-file
    diff (result(<) vs expected_result(>)) = 
    @@ -10,6 +10,6 @@
     }
     
     int foo() {
    -  int[45] *x;
    +  int (*x)[45];
       return 0;
     }
�'fsh.res@�+format2.res�	TPROBLEM
   exn = Yes_prepare_ocamlcocci.LinkFailure("/tmp/ocaml_cocci_ddb86c.cmxs")
@@�+localid.res@�&hd.res@@�/multistruct.res@�(enum.res@@�.ifdefmeta3.res@�/constructor.res@@�+oneline.res@�,after_if.res@@@�+badzero.res@@�*double.res@�+arparam.res@@�(func.res@�'csw.res@@�/topdec_ver1.res@@�(stm1.res�	pPROBLEM
   exn = Failure("Semantic patch uses python, but Coccinelle has been compiled without Python support")
�)noty2.res@@�&td.res@�*struct.res@�)macro.res@�)endnl.res@�+bugloop.res@�+addelse.res@@�'ty1.res@�*test11.res@�,metaops0.res@�6incompatible_value.res@�*before.res@@�*test10.res@�'not.res@@@�&y2.res@�,twomatch.res@�-ifdefmeta.res@�+declinv.res�	MPROBLEM
   exn = Unix.Unix_error(Unix.ENOENT, "stat", "tests/declinv.cocci")
@@�*regexp.res@@�(zero.res@�-inherited.res@�,castdecl.res@�*addif1.res@@�,twoproto.res@�(defe.res@�+compare.res@@�(rems.res@�.proto_ver1.res@�*ifgoto.res@�)idstr.res@@�2type_annotated.res@�'ifd.res@@@�1scope_problem.res�
  �INCORRECT:diff token: } VS a
File <COCCIOUTPUTFILE>, line 4, column 2,  charpos = 42
    around = '}', whole content =   }
File "tests/scope_problem.res", line 4, column 4,  charpos = 44
    around = 'a', whole content =     a = 2;

    diff (result(<) vs expected_result(>)) = 
    @@ -1,7 +1,6 @@
     void main(int i) {
       if(1) {
         int a;
    +    a = 2;
       }
    -
    -
     }
@�/branchparen.res@@�'inc.res@�(four.res@�'exp.res@@�-wierdinit.res�
  Xseems incorrect, but only because of code that was not parsablediff token: dev_link_t VS struct
File "tests/wierdinit.c", line 4, column 1,  charpos = 27
    around = 'dev_link_t', whole content = 	dev_link_t *link;
File "tests/wierdinit.res", line 4, column 1,  charpos = 27
    around = 'struct', whole content = 	struct pcmcia_device *link;
�,ifreturn.res@�(decl.res@�(befS.res@@�(void.res@�+varargs.res@�6test_unsigned_meta.res@@�*symbol.res@@@�4pb_parsing_macro.res@@�-multiplus.res@@�/test11_ver1.res@�,multidec.res@@�3toplevel_struct.res@�&pa.res@�/initializer.res@�+dowhile.res@@�'kmc.res@@�+expopt2.res@@�7pb_distribute_type3.res�	?PROBLEM
   exn = Failure("line 7: index 53 53 already used\n")
@�+devlink.res@@�*unelse.res@�,retmacro.res@�-remstruct.res@�*memory.res@�1match_no_meta.res@@�7pb_distribute_type2.res�
  /INCORRECT:PB parsing only in generated-file
    diff (result(<) vs expected_result(>)) = 
    @@ -1,5 +1,5 @@
     int foo() {
    -  int* x;
    +  int *x;
       return 0;
     }
     
    @@ -10,6 +10,6 @@
     }
     
     int foo() {
    -  int x[45]*;
    +  int (*x)[45];
       return 0;
     }
�3parameters_dots.res@@�+include.res@�'cst.res@@�2struct_typedef.res@�(stmt.res@�-null_bool.res�
  $INCORRECT:diff token: ) VS !=
File <COCCIOUTPUTFILE>, line 2, column 8,  charpos = 22
    around = ')', whole content =   if (12) return;
File "tests/null_bool.res", line 2, column 9,  charpos = 23
    around = '!=', whole content =   if (12 != NULL) return;

    diff (result(<) vs expected_result(>)) = 
    @@ -1,6 +1,6 @@
     int main () {
    -  if (12) return;
    -  if (a && 12 && b) return;
    +  if (12 != NULL) return;
    +  if (a && 12 != NULL && b) return;
       if (12) return;
       if (a && 12 && b) return;
       x = x + 20;
�-ifreturn6.res@@�+incpos1.res�	pPROBLEM
   exn = Failure("Semantic patch uses python, but Coccinelle has been compiled without Python support")
�.distribute.res@�+attradd.res@@�,isococci.res@@�+spacing.res@@�(delp.res@@@�'tup.res@�'opt.res@�&ab.res@@�*typeof.res@�(tyex.res@@�)test7.res@�&na.res@�*inline.res@�2comment_brace2.res@@�&fp.res@@@�.multichars.res@�-find_long.res@@@�&ty.res@�-positionc.res@�,nameless.res@�+minenum.res@�)edots.res@@�1disjexpr_ver1.res@�+bigrepl.res@@�)test9.res@�(stm6.res@�)foura.res@@�/localglobal.res@�'fun.res@@�*switch.res@�0param_to_exp.res�	RPROBLEM
   exn = Unix.Unix_error(Unix.ENOENT, "stat", "tests/param_to_exp.cocci")
@@�*return.res@@�,reserved.res@�+nestone.res@@�(rem2.res@@�(pcim.res@�+ifdef6a.res@�1double_switch.res@�3bad_iso_example.res�
  �INCORRECT:diff token: ( VS x
File "tests/bad_iso_example.c", line 2, column 6,  charpos = 19
    around = '(', whole content =   if ((x = 3)) return;
File "tests/bad_iso_example.res", line 2, column 6,  charpos = 19
    around = 'x', whole content =   if (x) return;

    diff (result(<) vs expected_result(>)) = 
    @@ -1,4 +1,4 @@
     int main() {
    -  if ((x = 3)) return;
    +  if (x) return;
     }
     
@�2wierd_argument.res@@�+retval2.res@@@�(cr1a.res@@�,remparam.res@�/multi_func1.res�	�PROBLEM
   exn = Failure("minus: parse error: \n = File \"tests/multi_func1.cocci\", line 12, column 2,  charpos = 102\n    around = 'fn2', whole content =   fn2(...) {\n")
@@�;initializer_many_fields.res@�*incpos.res�	pPROBLEM
   exn = Failure("Semantic patch uses python, but Coccinelle has been compiled without Python support")
@�1mini_null_ref.res@�*ifdef2.res@@�/test10_ver1.res@@�0sizeof_julia.res@�+regexp2.res@�(hil1.res@@�)test8.res@�'lid.res@@�0print_return.res@�,disjexpr.res@@�-video1bis.res@�*proto2.res@�)bigin.res@�*addtoo.res@@@�,isotest2.res@@�0define_param.res@@�-null_type.res@@�4metastatement_if.res@@�0strangeorder.res@�*inhmet.res@@@�/remove_call.res@�,minenum1.res@�*jloop1.res�	�PROBLEM
   exn = Failure("minus: parse error: \n = File \"tests/jloop1.cocci\", line 10, column 3,  charpos = 129\n    around = '...>', whole content =    ...>\n")
�.end_commas.res@@�-overshoot.res@�'noa.res@�+kmalloc.res@�*inhpos.res@@�)test2.res@@@@�'top.res@�-same_expr.res@@�,cs_check.res@@�3gilles-question.res@@�.decl_space.res@�&cr.res@�)cards.res@@�-ifreturn3.res@�.define_exp.res@@�(pmac.res@�*ifdef4.res@@�*retval.res@�.match_init.res@�*incdir.res�
  �INCORRECT:diff token: x VS 12
File "tests/incdir.c", line 4, column 6,  charpos = 46
    around = 'x', whole content =   foo(x);
File "tests/incdir.res", line 4, column 6,  charpos = 46
    around = '12', whole content =   foo(12);

    diff (result(<) vs expected_result(>)) = 
    @@ -1,5 +1,5 @@
     #include "sub/incdir2.c"
     
     int main () {
    -  foo(x);
    +  foo(12);
     }
�)exitc.res�	TPROBLEM
   exn = Yes_prepare_ocamlcocci.LinkFailure("/tmp/ocaml_cocci_5f6c2f.cmxs")
�'ben.res@�%a.res@@�-type_ver1.res@@�*protox.res@�+metaops.res@�,cst_null.res@�*addaft.res@@@�*posiso.res@�+nestseq.res@@�+metahex.res�
  VINCORRECT:diff token: f VS }
File "tests/metahex.c", line 2, column 2,  charpos = 15
    around = 'f', whole content =   f(3);
File "tests/metahex.res", line 2, column 0,  charpos = 13
    around = '}', whole content = }

    diff (result(<) vs expected_result(>)) = 
    @@ -1,4 +1,2 @@
     int main() {
    -  f(3);
    -  g(0x03);
     }
@@�)param.res@@�-multitype.res@�.addifelse2.res@@@�)test0.res@�&nl.res@�.ifdefmeta2.res@@�(tern.res@�*nocast.res@�*ifdef5.res@�(getc.res@�/gcc_min_max.res@@�(type.res@�.multidecl3.res@@@@�/pragmatest1.res@�)addif.res@@�*expopt.res@@�3return_implicit.res@�,addtrace.res�	NPROBLEM
   exn = Unix.Unix_error(Unix.ENOENT, "stat", "tests/addtrace.cocci")
@�-structfoo.res@�0expopt3_ver2.res@�.edots_ver1.res@@�0const_adding.res@@�*disjid.res@@�+partial.res@�1fix_flow_need.res@�.badtypedef.res@@@�&of.res@�'hex.res@@�*constx.res@�)break.res@@�)stm10.res@@�-longconst.res@�+fortype.res@�'dec.res@@@�+expopt3.res@@�2struct_metavar.res@@�)rems1.res@�7pb_distribute_type4.res@�(nest.res@�*julia7.res@�(ifif.res@�*badpos.res�	�PROBLEM
   exn = Failure("rule starting on line 1: already tagged token:\nC code context\nFile \"tests/badpos.c\", line 5, column 30,  charpos = 139\n    around = 'reg_ptr', whole content = \t (int) -(((struct pt_regs *) reg_ptr)->orig_eax + 2));")
@�2pb_tag_symbols.res@@�+arraysz.res@@@ �