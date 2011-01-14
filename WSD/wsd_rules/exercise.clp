
(defrule exercise0
(declare (salience 5000))
(id-root ?id exercise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyAyAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exercise.clp 	exercise0   "  ?id "  vyAyAma )" crlf))
)

;"exercise","N","1.vyAyAma"
;We must do exercises regularly.
;--"2.aByAsa"
;I couldn't do the last exercise of my maths book.
;
(defrule exercise1
(declare (salience 4900))
(id-root ?id exercise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyAyAma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exercise.clp 	exercise1   "  ?id "  vyAyAma_kara )" crlf))
)

;"exercise","V","1.vyAyAma_karanA"
;We must exercise regularly.
;
;LEVEL 
;Headword : exercise
;
;Examples --
;
;"exercise","N","1.aByAsa" 
;I couldn't do the last exercise on translation.
;mEM anuvAxavAlA aMwima aByAsa nahIM kara pAyA. 
;--"2.vyAyAma/kasarawa"
;You ought to do muscle-exercises every morning. 
;wumhe rojZa savere vyAyAma karanA cAhie.
;
;"exercise","VT","1.vyAyAma karanA"  
;He exercises in the gymnasium. 
;vaha vyAyAmaSAlA meM vyAyAma karawA hE.
;--"2.kasarawa karanA"
;This mathematical problem is exercising our minds. 
;yaha aMkagaNiwa kI samasyA hamAre ximAga kI kasarawa karavA rahI hE. <---maswiRka se vyAyAma karavAnA
;--"3.aByAsa_meM_lAnA"
;Parents should exercise enough authority on their children.
;mAwA-piwA ko apane baccoM para saKwI aByAsa meM lAnA cAhiye.
;--"4.ciMwA meM dAlanA"
;I am much exercised by her silence. 
;mEM usakI cuppI se ciMwA meM padZa gayI hUz.<--cuppI kA kAraNa jAnane ke liye ximAga kI kasarawa karanA 
;
;ukwa uxAharaNoM se 'exercise' kA mUla arWa 'aByAsa' nikala kara AwA hE. 'aByAsa' se vyAyAma judZa jAwA hE. awaH isakA sUwra hogA -
;
;
;  sUwra : aByAsa^vyAyAma
