;$$$ modified by Pramila(BU) on 12-12-2013
;The Japanese have made the drinking of tea into an elaborate ritual, which has greatly influenced their life and culture.
;जापानियों ने चाय पान को एक व्‍यापक अनुष्ठान बना दिया है और इससे उनके जीवन और संस्‍कृति पर बड़ा प्रभाव पड़ा है।
(defrule elaborate0
(declare (salience 5000))
(id-root ?id elaborate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyApaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  elaborate.clp 	elaborate0   "  ?id "  vyApaka )" crlf))
)

;"elaborate","Adj","1.viswAra_se_kiyA_huA"
;They performed elaborate rituals.
;
(defrule elaborate1
(declare (salience 4900))
(id-root ?id elaborate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viswAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  elaborate.clp 	elaborate1   "  ?id "  viswAra_kara )" crlf))
)

;"elaborate","VT","1.viswAra_karanA"
;He elaborated && presented his work before the guide.
;
