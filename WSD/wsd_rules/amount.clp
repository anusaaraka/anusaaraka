
(defrule amount0
(declare (salience 5000))
(id-root ?id amount)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) of)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAwrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  amount.clp 	amount0   "  ?id "  mAwrA )" crlf))
)

(defrule amount1
(declare (salience 4900))
(id-root ?id amount)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rakZama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  amount.clp 	amount1   "  ?id "  rakZama )" crlf))
)

;"amount","N","1.rakZama"
;Indians waste a large amount of money on wedding ceremony.
;--"2.kuCa_haxa_waka"
;You can expect a certain amount of confusion in the meeting.
;
(defrule amount2
(declare (salience 4800))
(id-root ?id amount)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_barAbara_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  amount.clp 	amount2   "  ?id "  ke_barAbara_ho )" crlf))
)

;"amount","V","1.ke_barAbara_honA"
;The cost amounted to Rs.250.
;
;LEVEL 
;Headword : amount
;
;Examples --
;
;"amount","V","1.[kula_rakama]_kA_honA"
;Her debts amounted to Rs.10000.
;usakA uXAra kula kara xasa hajZAra rupaye kA ho gayA.
;--"2.ke_barAbara_honA"
;Her promises amount to nothing.
;usake vAyaxe na ke barAbara hEM.
;
;"amount","N","1.rakama"
;She has paid excess amount for this set.
;usane isa seta ke liye jZyAxA rakama xI hE.
;--"2.mAwrA" <---rakama kI mAwrA
;She can really afford any amount of money.
;vaha vAswava meM kiwanI BI mAwrA meM pEse xe sakawI hE.
;No amount of opposition will deter me.
;viroXI wAkawa jZarA BI nahIM muJe hilA pAyeMgI
;
;
;  nota:--yaxi'amount'Sabxa ke saBI vAkyoM 'kriyA'Ora'saMjFA'ke XyAna xeM wo yaha      niRkarRa nikAla sakawe hE ki saBI arWoM ko mUla arWa 'rakama'evaM'ke samAna'honA          se xiyA jA sakawA hE                                             
;
;             sUwra : rakama[>ke_barAbara]honA
;
;
; 
