;##############################################################################
;#  Copyright (C) 2013-2014  Prachi Rathore (prachirathore02@gmail.com)
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
;##############################################################################
;;@@@   ---Added by Prachi Rathore
;The bud was not really a bud but a new leaf which had not yet [unfurled].[gyannidhi]
;उसका तना वास्‍तव में अंकुर नहीं था बल्‍कि वह एक ऐसी पत्ती थी जो अभी ‍तक खिल नहीं पाई थी। 
(defrule unfurl0
(declare (salience 5000))
(id-root ?id unfurl)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id2)
(viSeRya-jo_samAnAXikaraNa  ?id1 ?id2)
(id-root ?id1 leaf|bud|flower)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unfurl.clp 	unfurl0   "  ?id "  Kila )" crlf)
))



;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;;@@@   ---Added by Prachi Rathore
;To unfurl a flag.[oald]
;झण्डा खोलना . 
(defrule unfurl1
(declare (salience 4000))
(id-root ?id unfurl)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unfurl.clp 	unfurl1   "  ?id "  Kola )" crlf))
)
