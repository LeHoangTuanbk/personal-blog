import { fetchLabelsNumberPosts } from '@widgets/label-list/api/fetch-labels-number-posts';

export type LabelWithPostCount = Awaited<
  ReturnType<typeof fetchLabelsNumberPosts>
>[number];
