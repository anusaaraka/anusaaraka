;##############################################################################
;#  Copyright (C) 2013-2014 Jagrati Singh (singh.jagriti5@gmail.com)
;#
;#  This program is free software; you can redistribute it and/or
;#  modify it under the terms of the GNU General Public License
;#  as published by the Free Software Foundation; either
;#  version 2 of the License, or (at your option) any later
;#  version.
;#
;#  This program is distributed in the hope that it will be useful,
;#  but WITHOUT ANY WARRANTY; without even the implied warranty of
;#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;#  GNU General Public License for more details.
;#
;#  You should have received a copy of the GNU General Public License
;#  along with this program; if not, write to the Free Software
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;

;It was a squalid affair involving prostitutes and drugs.[oald] 
;यह वेश्याओं और नशीले पदार्थ को शामिल करने का एक अनैतिकतापूर्ण मामला था.

(defrule squalid0
(declare (salience 5000))
(id-root ?id squalid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(id-root ?id1 prostitute|drug|sex)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anEwikawApUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  squalid.clp 	squalid0  "  ?id "  anEwikawApUrNa)" crlf))
)

;............Default rule..............

;Overcrowded,squalid refugee camps .[oald]
;भीड़ भरे,गन्दे शरणार्थी शिविर.
(defrule squalid1
(declare (salience 1))
(id-root ?id squalid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaMxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  squalid.clp 	squalid1  "  ?id "  gaMxA)" crlf))
)



