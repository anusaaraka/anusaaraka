
(defrule design0
(declare (salience 5000))
(id-root ?id design)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id designing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id cAlAka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  design.clp  	design0   "  ?id "  cAlAka )" crlf))
)

;"designing","Adj","1.cAlAka"
;A selfish && designing nation obsessed with the dark schemes of European intrigue
;
(defrule design1
(declare (salience 4900))
(id-root ?id design)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id racanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  design.clp 	design1   "  ?id "  racanA )" crlf))
)

(defrule design2
(declare (salience 4800))
(id-root ?id design)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nakSA_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  design.clp 	design2   "  ?id "  nakSA_banA )" crlf))
)

;default_sense && category=verb	rUpAkAra_xe	0
;"design","V","1.rUpAkAra_xenA"
;Design a better mouse trap.
;This room is not designed for work
;--"2.yojanA_banAnA
;She designed a good excuse for not attending classes that day
;She designed to go far in the world of business
;
;
;LEVEL 
;
;
;
;"design"
;N
;1.dijAina/rUpareKA [sketch/drawing]
;The design was made for a dress.
; poSAka ke lie dijAina banAI gaI WIM.
;
;2.aBikalpa/dijAina [decoration]
;The dress had a beautifull floral design.
;vaswra para eka suMxara PUlo kA dijAina WA.
;
;3.uxxeSya [purpose]
;We don't know whether it was done by accident or by design.
;hameM yaha pawA nahIM ki vaha kisI rxuGatanA se huI yA kisI uxxeSya se huI.
;
;4.irAxA [an intention]
;I have no design to go to Bombay.
;merA baMbaI jAne kA koI irAxA nahIM .
;
;V
;1.dijAina banAnA [to decide to work/look]
;We design kitchens for today's needs.
;hamane Aja ke lie rasoIGaro kA dijAina banAyA.
;
;2. rUpareKA banAnA
;The course is designed to improve their communication skills.
;unakI vicAra prakata karane kI kRamawAoM ko aXika acCA banAne ke anusAra korsa kI rUpareKA
;banI hE
;
;
;yahAz isa Sabxa kA mUla arWa "racanA"ke rUpa meM sAmane AwA hEM.jEse
;
;a.poSAka ke lie dijAina banAI gayI WIM.   
;b.vahA eka suxaMra PUloM kA dijAina WA.     <--racanA WI 
;c.hameM yaha pawA nahIM ki vaha kisI xurGatanA se huI yA kisI uxxeSya se huI.
;                                        <--koI_niSciwa_irAxA<--koI_racanA(vyUharacanA)
;d.merA baMbaI jAne kA koI irAxA nahIM.   <---koI aBikalpanA nahIM hE
;e.hamane Aja kI jZarUrawoM ke lie rasoIGaro kA dijAina banAyA . <--racanA [aBikalpanA]
;f.unakI vicAra prakata karane kI kRamawAoM ko aXika acCA banAne ke anusAra korsa kI rUpareKA banI hE.    <--aBikalpanA_kI_gayI_hE
;
;ina uXAharaNo ke AXAra para isakA sUwra hogA,
;                    
;sUwra : racanA[<aBikalpanA] 
;
;
