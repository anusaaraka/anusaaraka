;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005 @gmail.com)
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


;@@@ added by Pramila(BU) on 18-12-2013
;The company has laid off 150 workers in an effort to save money.  ;oald
;कम्पनी ने पैसे बचाने की कोशिश में १५० श्रमिकों को हटा दिया.
(defrule effort0
(declare (salience 4950))
(id-root ?id effort)
?mng <-(meaning_to_be_decided ?id)
(saMjFA-to_kqxanwa  ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koSiSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  effort.clp 	effort0   "  ?id "  koSiSa )" crlf))
)

;@@@ added by Pramila(BU) on 18-12-2013
;A lot of effort has gone into making this event a success.
;इस आयोजन को सफल बनाने में बहुत प्रयास लगा..
;To make an effort.  ;oald
;प्रयास करना
(defrule effort1
(declare (salience 4000))
(id-root ?id effort)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prayAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  effort.clp 	effort1   "  ?id "  prayAsa )" crlf))
)

;@@@ added by Pramila(BU) on 18-12-2013
(defrule effort2
(declare (salience 0))
(id-root ?id effort)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prayAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  effort.clp 	effort2   "  ?id " prayAsa  )" crlf))
)


