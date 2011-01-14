
(defrule ally0
(declare (salience 5000))
(id-root ?id ally)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id allied )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sahabaxXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  ally.clp  	ally0   "  ?id "  sahabaxXa )" crlf))
)

;"allied","Adj","1.sahabaxXa"
;USA && allied forces started bombing Yugoslavia.
;
(defrule ally1
(declare (salience 4900))
(id-root ?id ally)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id miwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ally.clp 	ally1   "  ?id "  miwra )" crlf))
)

;"ally","N","1.miwra/sahabaxXa"
;France is an ally of America.
;
(defrule ally2
(declare (salience 4800))
(id-root ?id ally)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samabaxXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ally.clp 	ally2   "  ?id "  samabaxXa_kara )" crlf))
)

;"ally","VT","1.samabaxXa_karanA"
;Italy && Japan allied with Germany in teh second world war
;
;LEVEL 
;
;
;Headword : ally
;
;Examples --
;"ally","N","2.miwra/sahabaxXa"
;France is an ally of America.
;PrAMsa amarIkA kA miwra hE
;
;"ally","VT","1.judZanA"
;Italy && Japan allied with Germany in the second world war
;xvawIya mahAyuXxa meM italI Ora jApAna jarmanI ke sAWa judZa gaye
;
;
;nota:--uparyukwa Sabxa'ally'ke saMjFA Ora kriyA ke vAkyoM ko xeKane para isakA    
;      mUla arWa xono hI arWa 'miwra' Ora'judZanA' para AXAriwa hEM awaH isakA
;      sUwra nimna prakAra liKa sakawe hEM
;
;  sUwra : miwra[<judZanA]
;
;
