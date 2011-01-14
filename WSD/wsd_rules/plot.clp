
(defrule plot0
(declare (salience 5000))
(id-root ?id plot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaWAnaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plot.clp 	plot0   "  ?id "  kaWAnaka )" crlf))
)

(defrule plot1
(declare (salience 4900))
(id-root ?id plot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rUpa_reKA_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plot.clp 	plot1   "  ?id "  rUpa_reKA_banA )" crlf))
)

;"plot","V","1.rUpa reKA banAnA"
;I ploted a map of Asia on a paper.
;--"2.RadyaMwra racanA"
;Police plot a plan for the murderer.
;
;LEVEL 
;
;
;'plot' ke liye SabxasUwra banAne kA prayAsa:-
;
;"plot","N","1.BUBAga"
;I saw a plot , with a small cottage && rose garden, which was very beautiful
;--"2.kaWAnaka"
;The plot of this novel is to spot out the murderer.
;--"3.kucakra"
;The rebels in the party hatched a plot to bring the government down.
;
;"plot","V","1.rUpa reKA banAnA"
;I plotted a map of Asia on a paper.
;--"2.RadyaMwra racanA"
;Police plot a plan for the murderer.
;------------------------------------------------
;
;isa Sabxa kA mUla samBavawaH `BAga' ho yA yaha mUlawaH `BUBAga' ke arWa meM hI prayukwa ho.
;kaWA ke aMSa ke rUpa meM isakA pracalana . kAraNa yaha BI BAga hI hE (cAhe kaWA kA hI ho) .
;saMjFA se kriyArUpa- 
;isakA XAwurUpa `rUpa reKA banAnA' hogA . kAraNa binA rUpareKA banAye `BUBAga' kA 
;niScaya samBava nahIM . 
;BUBAga nimna howA hE . `Radyanwra nimna mAnA jAwA hE' yA Pira `pahale BUBAga hewu hI
;Radyanwra kiye jAwe We' . isa waraha `Radyanwra' rUpa meM isakA prayoga . 
;isakA kriyArUpa .  
;
;sUwra : [BU]BAga/kaWAnaka^kucakra
;
