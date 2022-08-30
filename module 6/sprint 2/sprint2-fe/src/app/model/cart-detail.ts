import {Book} from './book';
import {Cart} from './cart';

export interface CartDetail {
  id: number;
  cartDetailQuantity: number;
  book: Book;
  cart: Cart;
}
