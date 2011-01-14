
(defrule auxiliary0
(declare (salience 5000))
(id-root ?id auxiliary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahAyaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  auxiliary.clp 	auxiliary0   "  ?id "  sahAyaka )" crlf))
)

;"auxiliary","Adj","1.sahAyaka"
;We should have an auxiliary generator in case of power cut.
;bajalI kI katOwI kI xaSA meM hamAre pAsa eka sahAyaka janaretara honA cAhiye.
;
(defrule auxiliary1
(declare (salience 4900))
(id-root ?id auxiliary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahakArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  auxiliary.clp 	auxiliary1   "  ?id "  sahakArI )" crlf))
)

;"auxiliary","N","1.sahakArI"
;Auxiliary foreign troops used by a country during war.
;yuxXa ke xOrAna kisI xeSa xvArA vixeSI sahakArI POjoM kA prayoga.
;
