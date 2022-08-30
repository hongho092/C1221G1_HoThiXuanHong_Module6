import {Author} from './author';
import {Category} from './category';
import {Publisher} from './publisher';

export interface Book {
  id: number;
  bookName: string;
  detail: string;
  size: string;
  totalPage: string;
  quantity: number;
  img: string;
  price: string;
  author: Author;
  category: Category;
  publisher: Publisher;
}
