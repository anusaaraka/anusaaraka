
(defrule net0
(declare (salience 5000))
(id-root ?id net)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id netting )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id jAlI_banAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  net.clp  	net0   "  ?id "  jAlI_banAnA )" crlf))
)

;"netting","N","1.jAlI_banAnA"
;The chairs have strong wire netting.
;
(defrule net1
(declare (salience 4900))
(id-root ?id net)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAswavika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  net.clp 	net1   "  ?id "  vAswavika )" crlf))
)

;"net","Adj","1.vAswavika"
;What is your net income?
;
(defrule net2
(declare (salience 4800))
(id-root ?id net)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  net.clp 	net2   "  ?id "  jAla )" crlf))
)

;"net","N","1.jAla"
;The fishes were caught in the net.
;
(defrule net3
(declare (salience 4700))
(id-root ?id net)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAlI_me_PAzsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  net.clp 	net3   "  ?id "  jAlI_me_PAzsa )" crlf))
)

;"net","VT","1.jAlI_me_PAzsanA"
;They netted many fishes.
;
;LEVEL 
;
;
;"net","Adj","1.vAswavika"-asalI
;What is your net income?
;
;"2.aMwima pariNAma" -vAswavika-asalI
;The net result is that most of the small scale industries are being forced
;to shut down. 
;
;"net","N","1.jAla" -jAla
;The fishes were caught in the net.
;
;"net","VT","1.jAla me PAzsanA"-GeranA-jAla banAnA-jAla
;They netted many fishes.
;
;"2.jAla se DakanA/lagAnA" -biCAnA-GeranA-jAla banAnA-jAla
;Growers have netted grape canes.
;
;"3.pakadZanA/jAla se GeranA" -jAla banAnA -jAla
;A swoop by income tax officers has netted 1000 people so far. 
;
;nota :-- uparyukwa "net"Sabxa ke viSeRaNa,saMjFA,Ora kriyA,ke vAkyoM kA avalokana kareM       wo yaha niRkarRa nikAla sakawe hEM ki prawyeka rUpa kA nABikIya arWa 'asalI'
;       Ora 'jAla' se nikala sakawA hE. 
;     awa: "net"Sabxa kA sUwra isa prakAra liKa sakawe hEM  
;         
;sUwra : jAla/asalI 
;
;
;
