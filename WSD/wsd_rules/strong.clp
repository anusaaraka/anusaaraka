
;viSeRya=emotion && category=a	saSakwa	6.86738608048501
; Changed by Amba
(defrule strong0
(declare (salience 5000))
(id-root ?id strong)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saSakwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strong.clp 	strong0   "  ?id "  saSakwa )" crlf))
)

(defrule strong1
(declare (salience 4900))
(id-root ?id strong)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id majZabUwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strong.clp 	strong1   "  ?id "  majZabUwa )" crlf))
)

;Added by Aditya and Hardik(23-06-2013),IIT(BHU) batch 2012-2017.
;My mother always prefers strong coffee.
(defrule strong2
(declare (salience 5100))
(id-root ?id strong)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-viSeRaNa ?id1 ?id)(subject-subject_samAnAXikaraNa ?id1 ?id))
(id-word ?id1 coffee|tea|color|drink|acid|base)
(id-cat_coarse ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strong.clp 	strong2   "  ?id "  kadZA )" crlf))
)

;"strong","Adj","1.majZabUwa"
;For being an athlete you should be strong.
;The rope was strong enough to pull the weight from the bottom.
;With a strong kick he pushed the door open.
;There should be strong links between management & workers.
;--"2.UzcA"
;Politicians with strong voices have great impact on the audience.
;--"3.wejZa"
;Strong wind is blowing.
;He has used very strong colours in his latest painting.
;--"4.samarWa"
;The school has a strong tradition of academic excellence.
;--"5.pakkA"
;I had a strong impression that someone was following me.
;Miss Stubs was under strong impression that God is near.
;--"6.prabala"
;A strong evidence should be there to claim the accident.
;Rupee is stronger than Taka but weaker against Dollar.
;The demonstrators were 1,00,000 strong.
;--"7.kadZA"
;My mother always prefers strong coffee. ;refer strong rule 2
;--"8.wIKA"
;This chease tastes strong.
;--"9.praBAvaSAlI"  
;Ultra voilet rays have strong impact on human body. 
;
;
