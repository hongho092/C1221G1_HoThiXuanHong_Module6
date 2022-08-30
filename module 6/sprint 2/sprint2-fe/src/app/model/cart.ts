import {CartDetail} from './cart-detail';
import {Customer} from './customer';

export interface Cart {
  id: number;
  cartStatus: boolean;
  dateCreate: string;
  customer: Customer;
  cartDetais: CartDetail[];
}
