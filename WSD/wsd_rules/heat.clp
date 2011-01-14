
(defrule heat0
(declare (salience 5000))
(id-root ?id heat)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id heating )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id garama_karane_kI_paxXawi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  heat.clp  	heat0   "  ?id "  garama_karane_kI_paxXawi )" crlf))
)

;"heating","N","1.garama karane kI paxXawi"
;SIwa lahara ke xinoM meM"heating" acCA rahawA hE.
;
(defrule heat1
(declare (salience 4900))
(id-root ?id heat)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id headted )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id AvegapUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  heat.clp  	heat1   "  ?id "  AvegapUrNa )" crlf))
)

;"heated","Adj","1.AvegapUrNa"
;saMsaxa meM"heated"bahasa ho cukI hE.
;
;
(defrule heat2
(declare (salience 4800))
(id-root ?id heat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id URmA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  heat.clp 	heat2   "  ?id "  URmA )" crlf))
)

;"heat","N","1.URmA"
;he fainted because of heat .
;vaha garmI ke kAraNa behoSa ho gayA .
;
(defrule heat3
(declare (salience 4700))
(id-root ?id heat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id garama_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  heat.clp 	heat3   "  ?id "  garama_kara )" crlf))
)

;"heat","V","1.garama_karanA"
;if we heat iron it becomes red .
;agara hama lohA garama karawe hEM wo vaha lAla ho jAwA hE.
;
