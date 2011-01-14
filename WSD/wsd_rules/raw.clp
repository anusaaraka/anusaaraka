
(defrule raw0
(declare (salience 5000))
(id-root ?id raw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaccA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  raw.clp 	raw0   "  ?id "  kaccA )" crlf))
)

(defrule raw1
(declare (salience 4900))
(id-root ?id raw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaccA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  raw.clp 	raw1   "  ?id "  kaccA )" crlf))
)

;"raw","Adj","1.kaccA"
;Raw vegetables are good for health. 
;--"2.prAkqwika_sWiwi_me"   
;Raw sewage should be chemically treated first.  
;--"3.axakRa"    
;A raw hand in a factory doesn't suit at all.
;--"4.kacce_AzkadZe"  
;You can feed raw data into a computer. 
;--"5.vaswrahIna"  
;There are many natives all over the world who still live raw. 
;--"6.anuciwa_vyavahAra"    
;He lost his job for being late once ,he got a pretty raw deal.
;
;