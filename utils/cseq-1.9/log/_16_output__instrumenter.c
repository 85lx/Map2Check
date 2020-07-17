/*
 *  generated by CSeq [ 0000 / 0000 ] 2020-07-11 18:03:22 
 *
 *                    [ 0000 merger-2019.11.15
 *                      0000 parser-2019.11.27
 *                      0000 module-0.0-2019.11.27 ]
 *
 *  params:
 *    -D , -b , -i examples/lazy_unsafe.c, --backend klee, --output examples/test.c
 *
 *  modules:
 *    0000 workarounds ()
 *    0000 functiontracker ()
 *    0000 preinstrumenter (error-label)
 *    0000 constants (deep-propagation)
 *    0000 spinlock ()
 *    0000 switchtransformer ()
 *    0000 dowhileconverter ()
 *    0000 conditionextractor ()
 *    0000 varnames ()
 *    0000 preinliner ()
 *    0000 inliner (atomic-parameters simplify-args)
 *    0000 unroller (unwind unwind-while unwind-for unwind-for-max softunwindbound varnamesmap varscopesmap extra-tracking)
 *    0000 duplicator ()
 *    0000 condwaitconverter ()
 *    0000 lazyseq (rounds threads schedule deadlock norobin preanalysis nondet-condvar-wakeups)
 *    0000 instrumenter (backend bitwidth header well-nested-locks emptystructs)
 *    0000 feeder (backend time llvm depth slevel output no-simplify)
 *    0000 cex (backend cex exitcode threadnamesmap threadindexes threadindextoname varnamesmap coordstofunctions sv-comp witness entry threadsizes threadendlines loopheads)
 *
 */
#define __cs_MUTEX_INITIALIZER -1
#define __cs_COND_INITIALIZER -1
#define __cs_RWLOCK_INITIALIZER -1
#define __cs_BARRIER_SERIAL_THREAD 0
#define __cs_CANCEL_ASYNCHRONOUS 0
#define __cs_CANCEL_ENABLE 0
#define __cs_CANCEL_DEFERRED 0
#define __cs_CANCEL_DISABLE 0
#define __cs_CANCELED 0
#define __cs_CREATE_DETACHED 0
#define __cs_CREATE_JOINABLE 0
#define __cs_EXPLICIT_SCHED 0
#define __cs_INHERIT_SCHED 0
#define __cs_MUTEX_DEFAULT 0
#define __cs_MUTEX_ERRORCHECK 0
#define __cs_MUTEX_NORMAL 0
#define __cs_MUTEX_RECURSIVE 0
#define __cs_MUTEX_ROBUST 0
#define __cs_MUTEX_STALLED 0
#define __cs_ONCE_INIT 0
#define __cs_PRIO_INHERIT 0
#define __cs_PRIO_NONE 0
#define __cs_PRIO_PROTECT 0
#define __cs_PROCESS_SHARED 0
#define __cs_PROCESS_PRIVATE 0
#define __cs_SCOPE_PROCESS 0
#define __cs_SCOPE_SYSTEM 0
#include <assert.h>
#include <klee/klee.h>
#include <assert.h>

#define __VERIFIER_assume KLEE_assume
#define __VERIFIER_assert KLEE_assert

void KLEE_assume(int condition) {
    // Guard the condition we assume so that if it is not
    // satisfiable we don't flag up an error. Instead we'll
    // just silently terminate this state.
    if (condition) {
        klee_assume(condition);
    } else {
        klee_silent_exit(0);
    }
}

#define KLEE_assert(cond) {if (!(cond)) klee_report_error(__FILE__, __LINE__ , "svcomp assert failed", "svcomp.assertfail"); }

void __VERIFIER_error()  {
    klee_report_error(__FILE__, __LINE__, "svcomp error", "svcomp.err");
}

#define __VERIFIER_nondet_int KLEE_nondet_int
// int KLEE_nondet_int() { int x; klee_make_symbolic(&x, sizeof(x), "x"); return x; }
int KLEE_nondet_int() { return klee_int("x"); }
#define __VERIFIER_nondet_uint KLEE_nondet_uint
unsigned int KLEE_nondet_uint() { unsigned int x; klee_make_symbolic(&x, sizeof(x), "x"); return x; }
#define __VERIFIER_nondet_bool KLEE_nondet_bool
// _Bool KLEE_nondet_bool() { _Bool x; klee_make_symbolic(&x, sizeof(x), "x"); return x; }
_Bool KLEE_nondet_bool() { return klee_range(0, 2, "x"); }
#define __VERIFIER_nondet_char KLEE_nondet_char
char KLEE_nondet_char() { char x; klee_make_symbolic(&x, sizeof(x), "x"); return x; }
#define __VERIFIER_nondet_uchar KLEE_nondet_uchar
unsigned char KLEE_nondet_uchar() { unsigned char x; klee_make_symbolic(&x, sizeof(x), "x"); return x; }
//#include <stdio.h>
//#include <stdlib.h>
#define THREADS 3
#define ROUNDS 1
#define STOP_VOID(A) return;
#define STOP_NONVOID(A) return 0;
#define IF(T,A,B) if ((__cs_pc[T] > A) | (A >= __cs_pc_cs[T])) goto B;
#ifndef NULL
#define NULL 0
#endif
                         
                         unsigned int __cs_active_thread[THREADS + 1] = {1};
                         
                         unsigned int __cs_pc[THREADS + 1];
                         
                         unsigned int __cs_pc_cs[THREADS + 1];
                         
                         unsigned int __cs_thread_index;
                         
                         unsigned int __cs_last_thread;
                         
                         unsigned int __cs_thread_lines[] = {6, 3, 3, 3};
                         
                         void *__cs_safe_malloc(unsigned int __cs_size)
                         {
                                   
                                   void *__cs_ptr = (malloc(__cs_size));
                                   
                                   KLEE_assume(__cs_ptr);
                                   return (__cs_ptr);
                         }
                         
                         
                         void __cs_init_scalar(void *__cs_var, unsigned int __cs_size)
                         {
                                   
                                   if (__cs_size == (sizeof(int)))
                                             
                                   * ((int *) __cs_var) = (KLEE_nondet_int());
                                   else
                         
                                             {
                                             
                                             __cs_var = (malloc(__cs_size));
                                   }
                         
                         }
                         
                         
                         void __CSEQ_message(char *__cs_message)
                         {
                                   ;
                         }
                         
                         
                         typedef int cspthread_t;
                         
                         void *__cs_threadargs[THREADS + 1];
                         
                         typedef int cspthread_key_t;
                         
                         cspthread_key_t __cs_keys[1][THREADS + 2];
                         
                         void (*__cs_key_destructor[1])(void *);
                         
                         int pthread_create(cspthread_t *__cs_new_thread_id, void *__cs_attr, void *(*__cs_func)(void *), void *__cs_arg, int __cs_threadID)
                         {
                                   
                                   if (__cs_threadID > THREADS)
                                             return (0);
                         
                                   
                                   * __cs_new_thread_id = (__cs_threadID);
                                   
                                   __cs_active_thread[__cs_threadID] = (1);
                                   
                                   __cs_threadargs[__cs_threadID] = (__cs_arg);
                                   
                                   __CSEQ_message("thread spawned");
                                   
                                   return (0);
                         }
                         
                         
                         int pthread_join(cspthread_t __cs_id, void **__cs_value_ptr)
                         {
                                   
                                   KLEE_assume(__cs_pc[__cs_id] == __cs_thread_lines[__cs_id]);
                                   
                                   return (0);
                         }
                         
                         
                         int pthread_exit(void *__cs_value_ptr)
                         {
                                   
                                   if ((__cs_key_destructor[0] != 0) && (__cs_keys[0][__cs_thread_index + 1] != 0))
                                   {
                                             
                                             __cs_key_destructor[0](__cs_keys[0][__cs_thread_index + 1]);
                                   }
                         
                         }
                         
                         
                         int pthread_self(void)
                         {
                                   return (__cs_thread_index + 1);
                         }
                         
                         
                         typedef int cspthread_mutex_t;
                         
                         int pthread_mutex_init(cspthread_mutex_t *__cs_m, int __cs_val)
                         {
                                   
                                   * __cs_m = (- 1);
                                   
                                   return (0);
                         }
                         
                         
                         int pthread_mutex_destroy(cspthread_mutex_t *__cs_mutex_to_destroy)
                         {
                                   
                                   * __cs_mutex_to_destroy = (- 2);
                                   
                                   __CSEQ_message("lock destroyed");
                                   
                                   return (0);
                         }
                         
                         
                         int pthread_mutex_lock(cspthread_mutex_t *__cs_mutex_to_lock)
                         {
                                   
                                   KLEE_assume((* __cs_mutex_to_lock) == (- 1));
                                   
                                   * __cs_mutex_to_lock = (__cs_thread_index + 1);
                                   
                                   __CSEQ_message("lock acquired");
                                   
                                   return (0);
                         }
                         
                         
                         int pthread_mutex_unlock(cspthread_mutex_t *__cs_mutex_to_unlock)
                         {
                                   
                                   KLEE_assume((* __cs_mutex_to_unlock) == (__cs_thread_index + 1));
                                   
                                   * __cs_mutex_to_unlock = (- 1);
                                   
                                   __CSEQ_message("lock released");
                                   
                                   return (0);
                         }
                         
                         
                         typedef int cspthread_cond_t;
                         
                         int pthread_cond_init(cspthread_cond_t *__cs_cond_to_init, void *__cs_attr)
                         {
                                   
                                   * __cs_cond_to_init = (- 1);
                                   
                                   return (0);
                         }
                         
                         
                         int pthread_cond_destroy(cspthread_cond_t *__cs_cond_to_destroy)
                         {
                                   
                                   * __cs_cond_to_destroy = (- 2);
                                   
                                   return (0);
                         }
                         
                         
                         int pthread_cond_wait_1(cspthread_cond_t *__cs_cond_to_wait_for, cspthread_mutex_t *__cs_m)
                         {
                                   
                                   pthread_mutex_unlock(__cs_m);
                                   
                                   return (0);
                         }
                         
                         
                         int pthread_cond_wait_2(cspthread_cond_t *__cs_cond_to_wait_for, cspthread_mutex_t *__cs_m)
                         {
                                   
                                   KLEE_assume((* __cs_cond_to_wait_for) == 1);
                                   
                                   pthread_mutex_lock(__cs_m);
                                   
                                   return (0);
                         }
                         
                         
                         int pthread_cond_signal(cspthread_cond_t *__cs_cond_to_signal)
                         {
                                   
                                   * __cs_cond_to_signal = (1);
                                   
                                   __CSEQ_message("conditional variable signal");
                                   
                                   return (0);
                         }
                         
                         
                         int pthread_cond_broadcast(cspthread_cond_t *__cs_cond_to_broadcast)
                         {
                                   
                                   * __cs_cond_to_broadcast = (1);
                                   
                                   __CSEQ_message("conditional variable broadcast");
                                   
                                   return (0);
                         }
                         
                         
                         typedef struct cspthread_barrier_t
                         {
                                   
                                   unsigned int init;
                                   
                                   unsigned int current;
                         } cspthread_barrier_t;
                         
                         int pthread_barrier_init(cspthread_barrier_t *__cs_barrier_to_init, void *__cs_attr, unsigned int count)
                         {
                                   
                                   __cs_barrier_to_init->current = (count);
                                   
                                   __cs_barrier_to_init->init = (count);
                                   
                                   return (0);
                         }
                         
                         
                         int pthread_barrier_destroy(cspthread_barrier_t *__cs_barrier_to_destroy)
                         {
                                   
                                   __cs_barrier_to_destroy->init = (- 1);
                                   
                                   __cs_barrier_to_destroy->current = (- 1);
                                   
                                   return (0);
                         }
                         
                         
                         int pthread_barrier_wait_1(cspthread_barrier_t *__cs_barrier_to_wait)
                         {
                                   
                                   __cs_barrier_to_wait->current--;
                                   
                                   return (0);
                         }
                         
                         
                         int pthread_barrier_wait_2(cspthread_barrier_t *__cs_barrier_to_wait)
                         {
                                   
                                   KLEE_assume(__cs_barrier_to_wait->current == 0);
                                   
                                   __cs_barrier_to_wait->current = (__cs_barrier_to_wait->init);
                                   
                                   return (0);
                         }
                         
                         
                         int pthread_key_create(cspthread_key_t *key, void (*destructor)(void *))
                         {
                                   
                                   static int currentkey = (0);
                                   
                                   __cs_key_destructor[0] = (destructor);
                                   
                                   * key = (currentkey++);
                                   
                                   return (0);
                         }
                         
                         
                         int pthread_setspecific(cspthread_key_t key, const void *value)
                         {
                                   
                                   __cs_keys[key][__cs_thread_index + 1] = (value);
                                   
                                   return (0);
                         }
                         
                         
                         void *pthread_getspecific(cspthread_key_t key)
                         {
                                   
                                   return (__cs_keys[key][__cs_thread_index + 1]);
                         }
                         
                         
                         void __CSEQ_noop(void)
                         {
                         }
                         
                         
                         void __VERIFIER_error();
                         
                         
                         cspthread_mutex_t m;
                         
                         int data = (0);
                         
                         void *thread1_0(void *__cs_param_thread1_arg)
                         
                         {
                                   
IF(1,0,tthread1_0_1)
                                   
                                   pthread_mutex_lock(& m);
                                   
tthread1_0_1: IF(1,1,tthread1_0_2)
                                   
                                   data++;
                                   
tthread1_0_2: IF(1,2,tthread1_0_3)
                                   
                                   pthread_mutex_unlock(& m);
                                   
                                   __exit_thread1:
                                   KLEE_assume(__cs_pc_cs[1] >= 3);
                         
                                   
                                   ;
                                   ;
                                   
tthread1_0_3: 
                                   
                                   pthread_exit(0);
                         }
                         
                         
                         void *thread2_0(void *__cs_param_thread2_arg)
                         
                         {
                                   
IF(2,0,tthread2_0_1)
                                   
                                   pthread_mutex_lock(& m);
                                   
tthread2_0_1: IF(2,1,tthread2_0_2)
                                   
                                   data += (2);
                                   
tthread2_0_2: IF(2,2,tthread2_0_3)
                                   
                                   pthread_mutex_unlock(& m);
                                   
                                   __exit_thread2:
                                   KLEE_assume(__cs_pc_cs[2] >= 3);
                         
                                   
                                   ;
                                   ;
                                   
tthread2_0_3: 
                                   
                                   pthread_exit(0);
                         }
                         
                         
                         void *thread3_0(void *__cs_param_thread3_arg)
                         
                         {
                                   
IF(3,0,tthread3_0_1)
                                   
                                   pthread_mutex_lock(& m);
                                   
                                   static _Bool __cs_local_thread3___cs_tmp_if_cond_0;
                                   
tthread3_0_1: IF(3,1,tthread3_0_2)
                                   
                                   __cs_local_thread3___cs_tmp_if_cond_0 = (data >= 3);
                                   
                                   if (__cs_local_thread3___cs_tmp_if_cond_0)
                         
                                             {
                                             
                                             KLEE_assert(0);
                                             
                                             ;
                                             ;
                                   }
                         
                                   
                                   ;
                                   
tthread3_0_2: IF(3,2,tthread3_0_3)
                                   
                                   pthread_mutex_unlock(& m);
                                   
                                   __exit_thread3:
                                   KLEE_assume(__cs_pc_cs[3] >= 3);
                         
                                   
                                   ;
                                   ;
                                   
tthread3_0_3: 
                                   
                                   pthread_exit(0);
                         }
                         
                         
                         int main_thread(void)
                         
                         {
                                   
IF(0,0,tmain_1)
                                   
                                   pthread_mutex_init(& m, 0);
                                   
                                   static cspthread_t __cs_local_main_t1;
                                   __cs_init_scalar(& __cs_local_main_t1, sizeof(cspthread_t));
                                   
                                   static cspthread_t __cs_local_main_t2;
                                   __cs_init_scalar(& __cs_local_main_t2, sizeof(cspthread_t));
                                   
                                   static cspthread_t __cs_local_main_t3;
                                   __cs_init_scalar(& __cs_local_main_t3, sizeof(cspthread_t));
                                   
                                   pthread_create(& __cs_local_main_t1, 0, thread1_0, 0, 1);
                                   
tmain_1: IF(0,1,tmain_2)
                                   
                                   pthread_create(& __cs_local_main_t2, 0, thread2_0, 0, 2);
                                   
tmain_2: IF(0,2,tmain_3)
                                   
                                   pthread_create(& __cs_local_main_t3, 0, thread3_0, 0, 3);
                                   
tmain_3: IF(0,3,tmain_4)
                                   
                                   pthread_join(__cs_local_main_t1, 0);
                                   
tmain_4: IF(0,4,tmain_5)
                                   
                                   pthread_join(__cs_local_main_t2, 0);
                                   
tmain_5: IF(0,5,tmain_6)
                                   
                                   pthread_join(__cs_local_main_t3, 0);
                                   
                                   goto __exit_main;
                                   ;
                                   
                                   __exit_main:
                                   KLEE_assume(__cs_pc_cs[0] >= 6);
                         
                                   
                                   ;
                                   ;
                                   
tmain_6: 
                                   
                                   pthread_exit(0);
                         }
                         
                         
                         int main(void)
                         {
                                   
/* round  0 */
                                   
/* main */
                                   
                                   __cs_thread_index = (0);
                                   
                                   unsigned int __cs_tmp_t0_r0;
                                   
                                   __cs_pc_cs[0] = (__cs_tmp_t0_r0);
                                   
                                   KLEE_assume(__cs_pc_cs[0] > 0);
                                   
                                   KLEE_assume(__cs_pc_cs[0] <= 6);
                                   
                                   main_thread();
                                   
                                   __cs_pc[0] = (__cs_pc_cs[0]);
                                   
/* thread1_0 */
                                   
                                   unsigned int __cs_tmp_t1_r0;
                                   
                                   if (__cs_active_thread[1])
                                   {
                                             
                                             __cs_thread_index = (1);
                                             
                                             __cs_pc_cs[1] = (__cs_tmp_t1_r0);
                                             
                                             KLEE_assume(__cs_pc_cs[1] <= 3);
                                             
                                             thread1_0(__cs_threadargs[1]);
                                             
                                             __cs_pc[1] = (__cs_pc_cs[1]);
                                   }
                         
                                   
/* thread2_0 */
                                   
                                   unsigned int __cs_tmp_t2_r0;
                                   
                                   if (__cs_active_thread[2])
                                   {
                                             
                                             __cs_thread_index = (2);
                                             
                                             __cs_pc_cs[2] = (__cs_tmp_t2_r0);
                                             
                                             KLEE_assume(__cs_pc_cs[2] <= 3);
                                             
                                             thread2_0(__cs_threadargs[2]);
                                             
                                             __cs_pc[2] = (__cs_pc_cs[2]);
                                   }
                         
                                   
/* thread3_0 */
                                   
                                   unsigned int __cs_tmp_t3_r0;
                                   
                                   if (__cs_active_thread[3])
                                   {
                                             
                                             __cs_thread_index = (3);
                                             
                                             __cs_pc_cs[3] = (__cs_tmp_t3_r0);
                                             
                                             KLEE_assume(__cs_pc_cs[3] <= 3);
                                             
                                             thread3_0(__cs_threadargs[3]);
                                             
                                             __cs_pc[3] = (__cs_pc_cs[3]);
                                   }
                         
                                   
                                   unsigned int __cs_tmp_t0_r1;
                                   
                                   if (__cs_active_thread[0])
                                   {
                                             
                                             __cs_thread_index = (0);
                                             
                                             __cs_pc_cs[0] = (__cs_tmp_t0_r1);
                                             
                                             KLEE_assume(__cs_pc_cs[0] >= __cs_pc[0]);
                                             
                                             KLEE_assume(__cs_pc_cs[0] <= 6);
                                             
                                             main_thread();
                                   }
                         
                                   
                                   return (0);
                         }
                         
                         