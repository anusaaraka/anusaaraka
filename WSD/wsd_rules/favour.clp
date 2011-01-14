
(defrule favour0
(declare (salience 5000))
(id-root ?id favour)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id favoured )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id anugraha_prApwa_karanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  favour.clp  	favour0   "  ?id "  anugraha_prApwa_karanA )" crlf))
)

;"favoured","Adj","1.anugraha prApwa karanA"
;China is the most favoured nation in American trade list.
;
(defrule favour1
(declare (salience 4900))
(id-root ?id favour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kqpA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  favour.clp 	favour1   "  ?id "  kqpA )" crlf))
)

(defrule favour2
(declare (salience 4800))
(id-root ?id favour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samarWana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  favour.clp 	favour2   "  ?id "  samarWana_kara )" crlf))
)

;default_sense && category=noun	kqpA	0
;"favour","N","1.kqpA"
;Due to her favour I was able to pass the exam.
; 
;"favour","VT","1.kqpA_xqRti_raKanA"
;He favoured me in the debate.
;
;LEVEL 
;Headword  : favour
;
;Examples --
;
;"favour","N","1.kqpA"
;Ram did him a favour by offering him a job
;nOkarI xekara rAma ne usapara kqpA kI.
;
;"favour","V","1.pakRapAwa_karanA" <--kisI_para_kqpA_karanA
;The examiner should not favour the students
;parIkRaka ko CAwroM ke sAWa pakRapAwa nahIM karanA cAhie
;--"2.pasanxa_karanA" <--pakRa_meM_honA
;I favour your proposal
;mEM wumhAre praswAva ko pasanxa karawA hUz
;
;
;anwarnihiwa sUwra ;
;
;kqpA -viSeRa kqpA karanA (pakRa lenA)- pakRa_meM_honA
;
;sUwra : kqpA-pakRa
;
