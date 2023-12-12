import { z } from 'zod';
import type { Page } from "playwright";
declare const Page: z.ZodType<Page>;
export declare const configSchema: z.ZodObject<{
    /**
     * URL to start the crawl
     * @example "https://www.builder.io/c/docs/developers"
     * @default ""
     */
    url: z.ZodString;
    /**
     * Pattern to match against for links on a page to subsequently crawl
     * @example "https://www.builder.io/c/docs/**"
     * @default ""
     */
    match: z.ZodUnion<[z.ZodString, z.ZodArray<z.ZodString, "many">]>;
    /**
     * Selector to grab the inner text from
     * @example ".docs-builder-container"
     * @default ""
     */
    selector: z.ZodOptional<z.ZodString>;
    /**
     * Don't crawl more than this many pages
     * @default 50
     */
    maxPagesToCrawl: z.ZodNumber;
    /**
     * File name for the finished data
     * @default "output.json"
     */
    outputFileName: z.ZodString;
    /** Optional cookie to be set. E.g. for Cookie Consent */
    cookie: z.ZodOptional<z.ZodObject<{
        name: z.ZodString;
        value: z.ZodString;
    }, "strip", z.ZodTypeAny, {
        value: string;
        name: string;
    }, {
        value: string;
        name: string;
    }>>;
    /** Optional function to run for each page found */
    onVisitPage: z.ZodOptional<z.ZodFunction<z.ZodTuple<[z.ZodObject<{
        page: z.ZodType<Page, z.ZodTypeDef, Page>;
        pushData: z.ZodFunction<z.ZodTuple<[z.ZodAny], z.ZodUnknown>, z.ZodPromise<z.ZodVoid>>;
    }, "strip", z.ZodTypeAny, {
        page: Page;
        pushData: (args_0: any, ...args_1: unknown[]) => Promise<void>;
    }, {
        page: Page;
        pushData: (args_0: any, ...args_1: unknown[]) => Promise<void>;
    }>], z.ZodUnknown>, z.ZodPromise<z.ZodVoid>>>;
    /** Optional timeout for waiting for a selector to appear */
    waitForSelectorTimeout: z.ZodOptional<z.ZodNumber>;
}, "strip", z.ZodTypeAny, {
    url: string;
    match: (string | string[]) & (string | string[] | undefined);
    maxPagesToCrawl: number;
    outputFileName: string;
    selector?: string | undefined;
    cookie?: {
        value: string;
        name: string;
    } | undefined;
    onVisitPage?: ((args_0: {
        page: Page;
        pushData: (args_0: any, ...args_1: unknown[]) => Promise<void>;
    }, ...args_1: unknown[]) => Promise<void>) | undefined;
    waitForSelectorTimeout?: number | undefined;
}, {
    url: string;
    match: (string | string[]) & (string | string[] | undefined);
    maxPagesToCrawl: number;
    outputFileName: string;
    selector?: string | undefined;
    cookie?: {
        value: string;
        name: string;
    } | undefined;
    onVisitPage?: ((args_0: {
        page: Page;
        pushData: (args_0: any, ...args_1: unknown[]) => Promise<void>;
    }, ...args_1: unknown[]) => Promise<void>) | undefined;
    waitForSelectorTimeout?: number | undefined;
}>;
export type Config = z.infer<typeof configSchema>;
export {};
//# sourceMappingURL=config.d.ts.map