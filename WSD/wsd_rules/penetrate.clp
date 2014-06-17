
(defrule penetrate0
(declare (salience 5000))
(id-root ?id penetrate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id penetrating )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sUkRma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  penetrate.clp  	penetrate0   "  ?id "  sUkRma )" crlf))
)

;"penetrating","Adj","1.sUkRma"
;She is enough penetrate to understand this long chapter.
;--"2.veXaka"
;A penetrating cry heard from our neighbour's house.
;
(defrule penetrate1
(declare (salience 4900))
(id-root ?id penetrate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gusa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  penetrate.clp 	penetrate1   "  ?id "  Gusa )" crlf))
)
;"penetrate","V","1.GusanA"
;The surgeons knife penetrated deep into the patient body.

;@@@ Added by Sonam Gupta MTech IT Banasthali 30-1-2014
;Our eyes could not penetrate the darkness. [OALD]
;हमारी आँखे अँधेरे के पार नहीं देख सकती .
(defrule penetrate2
(declare (salience 5500))
(id-root ?id penetrate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 darkness|dusk|gloom|dimness)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAra_xeKa))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  penetrate.clp 	penetrate2   "  ?id "  pAra_xeKa )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  penetrate.clp      penetrate2   "  ?id " kA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 30-1-2014
;Narrow alleys where the sun never penetrates.[OALD]
;तंग गली जहाँ सूरज कभी नहीं पहुँचता .
(defrule penetrate3
(declare (salience 5500))
(id-root ?id penetrate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 sun|sunray|ray|light)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahuzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  penetrate.clp 	penetrate3   "  ?id "  pahuzca )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 30-1-2014
;Science can penetrate many of nature's mysteries.  [OALD]
;विज्ञान प्रकृति के कई रहस्य भेद सकता है .
(defrule penetrate4
(declare (salience 5500))
(id-root ?id penetrate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?adj)
(viSeRya-of_saMbanXI  ?adj ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Bexa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  penetrate.clp 	penetrate4   "  ?id "  Bexa )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 30-1-2014
;Penetrate into somebody's mind. [Shikchtarthi kosh]
;किसी का दिमाग समझना .
(defrule penetrate5
(declare (salience 5500))
(id-root ?id penetrate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-into_saMbanXI  ?id ?id1)(kriyA-object  ?id ?id1))
(id-root ?id1 mind|brain|thought|meaning)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaJa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  penetrate.clp 	penetrate5   "  ?id "  samaJa )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 30-1-2014
;They were unable to penetrate his disguise. [MW]
;वो उसका वेष नहीं पहचान सके .
(defrule penetrate6
(declare (salience 5500))
(id-root ?id penetrate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 disguise|veil|mask)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahacAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  penetrate.clp 	penetrate6   "  ?id "  pahacAna )" crlf))
)
