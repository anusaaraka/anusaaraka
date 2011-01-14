
(defrule fail0
(declare (salience 5000))
(id-root ?id fail)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id failing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kamI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  fail.clp  	fail0   "  ?id "  kamI )" crlf))
)

;"failing","N","1.kamI"
;Many of us do not acknowledge the failings in the administrative system.
;
(defrule fail1
(declare (salience 4900))
(id-root ?id fail)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id failing )
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id na_hone_para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  fail.clp  	fail1   "  ?id "  na_hone_para )" crlf))
)

;"failing","Prep","1.na_hone_para/ke_aBAva_meM"
;Ask your friend to recommend the books or,failing that get a catalogue from the library.
;
(defrule fail2
(declare (salience 4800))
(id-root ?id fail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asaPala_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fail.clp 	fail2   "  ?id "  asaPala_ho )" crlf))
)

;default_sense && category=verb	cUka	0
;"fail","V","1.cUkanA"
;She failed to notice that her child was no longer in the cradle.
;--"2.asaPala_honA"
;Where do today's public schools fail?
;--"3.samApwa ho jAnA/Kawma hojAnA"
;Several companies failed to function during recession.
;--"4.anuwwIrNa_honA"
;She studied hard but failed nevertheless.
;--"5.kamI_honA"
;She failed in her obligations as a good daughter-in-law.
;--"6.aparyApwa honA"
;The water supply for the town failed after a long drought.
;
;LEVEL 
;Headword : fail
;
;Examples --
;"fail","V","1.cUkanA"
;She failed to notice that her child was no longer in the cradle.
;vaha yaha xeKane meM cUka gayI ki usakA baccA JUle meM nahIM WA.
;--"2.asaPala_honA"
;Where do today's public schools fail?
;Ajakala ke pablika skUla kisa swara para asaPala ho rahe hEM.
;--"3.banxa_honA"
;Several companies failed to function during recession.
;manxI ke xOrAna kaI kampaniyoM kA kAma karanA banxa ho gayA.
;--"4.anuwwIrNa_honA"
;She studied hard but failed nevertheless.
;vaha paDZI wo pariSrama se para anuwwIrNa ho gayI.
;--"5.aparyApwa honA"
;The water supply for the town failed after a long drought.
;lambe sUKe ke bAxa Sahara kI jala ApUrwI aparyApwa ho gayI.
;--"6.na_honA"
;Words fail me.
;mere pAsa Sabxa nahIM hE.<--Sabxa pAne meM asaPala honA
;--"7.kRINa_honA"
;His sight is failing.
;usakI najZara kRINa howI jA rahI hE.
;
;vyAKyA : uparyukwa uxAharaNa-vAkyoM meM cUkanA,vyApAra meM manxawA  ke
;kAraNa kAma kara pAne meM asaPala honA{banxa_karanA}(uxAharaNa 3), paryApwa mAwrA
;meM pAnI xe pAne meM asaPala honA(uxAharaNa 5), sahI Sabxa pAne meM asaPala honA
;(uxAharaNa 6) najZara kRINa honA (uxAharaNa 7) kramaSa: "asaPalawA" kA hI BAva hE
;awaH isakA sUwra hogA -
;
;sUwra : asaPala_honA
;
;
;Headword : failing
;
;Examples --
;
;"failing","N","xoRa"
;You have to acknowledge failings in the judicial system
;nyAyika sixXAnwa kI xoRoM ko wumheM mAnanA padegA 
;sUwra : "xoRa"
;
;
;
;
