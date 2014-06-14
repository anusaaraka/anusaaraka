;#############################################################################
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
;######################################################################
;@@@ Added by jagriti(7.1.2014)
;The drugs were secreted in the bag.
;दवा बैग  में छिपाई गयीं थीं . 
(defrule secrete0
(declare (salience 5000))
(id-root ?id secrete)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-subject ?id ?id1)(kriyA-object ?id ?id1))
(id-root ?id1 drug|heroin)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CipA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  secrete.clp 	secrete0   "  ?id "  CipA)" crlf))
)

;-------------- Default rule ------------------
;@@@ Added by jagriti(7.1.2014)
;Insulin is secreted by the pancreas.
;इन्सुलिन अग्न्याशय के द्वारा स्रावित किया जाता है.
(defrule secrete1
(declare (salience 4900))
(id-root ?id secrete)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id srAviwa_kara ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  secrete.clp 	secrete1   "  ?id "  srAviwa_kara)" crlf))
)
