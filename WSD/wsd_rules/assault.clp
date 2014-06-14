
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)7-feb-2014
;Three people died during an assault on the mountain.[oald]
;पर्वत पर चढ़ाई के दौरान ३ लोगों की मृत्यु हो गयी
(defrule assault2
(declare (salience 5000))
(id-root ?id assault)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-on_saMbanXI  ?id ?id1) 
(id-word ?id1 mountain)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cadZAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  assault.clp 	assault2   "  ?id "  cadZAI )" crlf))
)





;**************************DEFAULT RULES*******************************************
(defrule assault0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id assault)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hamalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  assault.clp 	assault0   "  ?id "  hamalA )" crlf))
)

(defrule assault1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id assault)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hamalA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  assault.clp 	assault1   "  ?id "  hamalA_kara )" crlf))
)

;"assault","VT","1.hamalA karanA/AkramaNa_karanA"
;The police assaulted the unarmed demonstrators.
;
;
