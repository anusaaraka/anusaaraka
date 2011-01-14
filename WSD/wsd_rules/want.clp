
(defrule want0
(declare (salience 5000))
(id-root ?id want)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  want.clp 	want0   "  ?id "  cAha )" crlf))
)



;Modified by Meena(25.6.10)
;Added by Meena(22.01.10)
;I want her to know about it.
;Bella wants a divorce.
(defrule want1
(declare (salience 4900))
(id-root ?id want)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
(id-root ?id1 ?word)
(or(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))(id-cat_coarse ?id1 PropN))
=>
(retract ?mng)
(if (or(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))(id-cat_coarse ?id1 PropN)) then
        (assert (kriyA_id-object_viBakwi ?id ko))
)
(assert (id-wsd_root_mng ?id cAha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  want.clp      want1   "  ?id "  cAha )" crlf)
(if  (or(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))(id-cat_coarse ?id1 PropN)) then
        (assert (kriyA_id-object_viBakwi ?id ko))
        (printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  want.clp      want1   "  ?id "  ko )" crlf)
 )
;(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  want.clp      want1   "  ?id " ko )" crlf)
)
)



;Salience reduced by Meena(22.01.10)
;I want to go.
(defrule want2
(declare (salience 0))
;(declare (salience 4900))
(id-root ?id want)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  want.clp 	want2   "  ?id "  cAha )" crlf))
)

;"want","VTI","1.cAhanA"
;They want a good library
;
;LEVEL 
;Headword : want
;
;Examples --
; 
;"cAhanA"
;She wants a cleaner room.
;vaha jZyAxA sAPa kamarA cAhawI hE.
;
;Ram wants a pay increase.
;rAma vewana-vqxXi cAhawA hE
;
;Hari wants Meera to go.
;hari cAhawA hE ki mIrA jAe
;
;Meera wants to go.
;mIrA jAnA cAhawI hE.
;
;They will want bigger rooms.
;unako Ora badZe kamaroM kI 'jZarUrawa' hogI <-- ve jyAxA badZe kamare cAheMge
;
;I want to be more careful.
;mEM Ora jyAxA sawarka rahanA 'cAhawA' hUz
;
;He is wanted by the police.
;pulisa ko usakI walASa hE <--pulisa usako DUzDa rahI hE <--mAmalA sulaJAne ke liye pulisa ko usakI jZarUrawa hE <-- yAni vaha pulisa kI jZarUrawa hE <-- yAni vaha pulisa xvArA cAhA jA rahA hE <--- vaha hE cAha_gayA pulisa xvArA
;
;Meera is wanted in the director's office.
;dAyarektara ke OYPisa meM mIrA kI 'jZarUrawa' hE.
;
;She is a woman of few wants.
;vaha WodZI hI 'icCAoM' vAlI Orawa hE <--- cAheM
;
;The hotel staff looks after all their wants.
;hotala ke karmacArI unakI saBI 'jarUraweM' xeKawe hEM <---jZarUraweM yAni cAheM
;
;The plants died from want of water.
;pAnI kI kamI ke kAraNa pOXe mara gaye.  <--kamI yAni jZarUraweM pUrI na honA <--yAni pAnI kI jZarUrawa pUrI na hone ke kAraNa pOXe mara gaye.
;
;The people in this area live in want.
;isa kRewra ke loga kamI meM rahawe hEM <---kamI meM rahanA yAni jZarUrawamanxa honA 
;
;
;Upara xiye uxAharaNoM se 'want' Sabxa kA nimna sUwra nikalawA hE :
;
;sUwra : cAha^kamI
