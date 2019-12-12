.class public abstract Landroid/support/v4/widget/CursorAdapter;
.super Landroid/widget/BaseAdapter;
.source "CursorAdapter.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Landroid/support/v4/widget/CursorFilter$CursorFilterClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/CursorAdapter$1;,
        Landroid/support/v4/widget/CursorAdapter$MyDataSetObserver;,
        Landroid/support/v4/widget/CursorAdapter$ChangeObserver;
    }
.end annotation


# static fields
.field public static final FLAG_AUTO_REQUERY:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final FLAG_REGISTER_CONTENT_OBSERVER:I = 0x2


# instance fields
.field protected mAutoRequery:Z

.field protected mChangeObserver:Landroid/support/v4/widget/CursorAdapter$ChangeObserver;

.field protected mContext:Landroid/content/Context;

.field protected mCursor:Landroid/database/Cursor;

.field protected mCursorFilter:Landroid/support/v4/widget/CursorFilter;

.field protected mDataSetObserver:Landroid/database/DataSetObserver;

.field protected mDataValid:Z

.field protected mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

.field protected mRowIDColumn:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 121
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Landroid/widget/BaseAdapter;-><init>()V

    .line 122
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 8

    .prologue
    .line 150
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    invoke-direct {v4}, Landroid/widget/BaseAdapter;-><init>()V

    .line 151
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 152
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 8

    .prologue
    .line 137
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    invoke-direct {v4}, Landroid/widget/BaseAdapter;-><init>()V

    .line 138
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 139
    return-void

    .line 138
    :cond_0
    const/4 v7, 0x2

    goto :goto_0
.end method


# virtual methods
.method public abstract bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.end method

.method public changeCursor(Landroid/database/Cursor;)V
    .locals 5

    .prologue
    .line 315
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v3

    move-object v2, v3

    .line 316
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 317
    move-object v3, v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 319
    :cond_0
    return-void
.end method

.method public convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 367
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-nez v2, :cond_0

    const-string v2, ""

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 201
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/widget/CursorAdapter;->mDataValid:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 202
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    move v0, v1

    .line 204
    :goto_0
    return v0

    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 194
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    move-object v0, v1

    return-object v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9

    .prologue
    .line 262
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/widget/CursorAdapter;->mDataValid:Z

    if-eqz v5, :cond_1

    .line 263
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    move v6, v1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    .line 265
    move-object v5, v2

    if-nez v5, :cond_0

    .line 266
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/CursorAdapter;->mContext:Landroid/content/Context;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v4/widget/CursorAdapter;->newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 270
    :goto_0
    move-object v5, v0

    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/CursorAdapter;->mContext:Landroid/content/Context;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v4/widget/CursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 271
    move-object v5, v4

    move-object v0, v5

    .line 273
    :goto_1
    return-object v0

    .line 268
    :cond_0
    move-object v5, v2

    move-object v4, v5

    goto :goto_0

    .line 273
    :cond_1
    const/4 v5, 0x0

    move-object v0, v5

    goto :goto_1
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 6

    .prologue
    .line 404
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/CursorAdapter;->mCursorFilter:Landroid/support/v4/widget/CursorFilter;

    if-nez v1, :cond_0

    .line 405
    move-object v1, v0

    new-instance v2, Landroid/support/v4/widget/CursorFilter;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v4/widget/CursorFilter;-><init>(Landroid/support/v4/widget/CursorFilter$CursorFilterClient;)V

    iput-object v2, v1, Landroid/support/v4/widget/CursorAdapter;->mCursorFilter:Landroid/support/v4/widget/CursorFilter;

    .line 407
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/CursorAdapter;->mCursorFilter:Landroid/support/v4/widget/CursorFilter;

    move-object v0, v1

    return-object v0
.end method

.method public getFilterQueryProvider()Landroid/widget/FilterQueryProvider;
    .locals 2

    .prologue
    .line 420
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    move-object v0, v1

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 212
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/widget/CursorAdapter;->mDataValid:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 213
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    move v3, v1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    .line 214
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    move-object v0, v2

    .line 216
    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 4

    .prologue
    .line 224
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/widget/CursorAdapter;->mDataValid:Z

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_1

    .line 225
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    move v3, v1

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/widget/CursorAdapter;->mRowIDColumn:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    move-wide v0, v2

    .line 231
    :goto_0
    return-wide v0

    .line 228
    :cond_0
    const-wide/16 v2, 0x0

    move-wide v0, v2

    goto :goto_0

    .line 231
    :cond_1
    const-wide/16 v2, 0x0

    move-wide v0, v2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    .line 244
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/widget/CursorAdapter;->mDataValid:Z

    if-nez v5, :cond_0

    .line 245
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const-string v7, "this should only be called when the cursor is valid"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 247
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    move v6, v1

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 248
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "couldn\'t move cursor to position "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 251
    :cond_1
    move-object v5, v2

    if-nez v5, :cond_2

    .line 252
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/CursorAdapter;->mContext:Landroid/content/Context;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v4/widget/CursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    move-object v4, v5

    .line 256
    :goto_0
    move-object v5, v0

    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/widget/CursorAdapter;->mContext:Landroid/content/Context;

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v4/widget/CursorAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    .line 257
    move-object v5, v4

    move-object v0, v5

    return-object v0

    .line 254
    :cond_2
    move-object v5, v2

    move-object v4, v5

    goto :goto_0
.end method

.method public hasStableIds()Z
    .locals 2

    .prologue
    .line 237
    move-object v0, p0

    const/4 v1, 0x1

    move v0, v1

    return v0
.end method

.method init(Landroid/content/Context;Landroid/database/Cursor;I)V
    .locals 11

    .prologue
    .line 164
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, v3

    const/4 v6, 0x1

    and-int/lit8 v5, v5, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 165
    move v5, v3

    const/4 v6, 0x2

    or-int/lit8 v5, v5, 0x2

    move v3, v5

    .line 166
    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v4/widget/CursorAdapter;->mAutoRequery:Z

    .line 170
    :goto_0
    move-object v5, v2

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    :goto_1
    move v4, v5

    .line 171
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 172
    move-object v5, v0

    move v6, v4

    iput-boolean v6, v5, Landroid/support/v4/widget/CursorAdapter;->mDataValid:Z

    .line 173
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Landroid/support/v4/widget/CursorAdapter;->mContext:Landroid/content/Context;

    .line 174
    move-object v5, v0

    move v6, v4

    if-eqz v6, :cond_4

    move-object v6, v2

    const-string v7, "_id"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    :goto_2
    iput v6, v5, Landroid/support/v4/widget/CursorAdapter;->mRowIDColumn:I

    .line 175
    move v5, v3

    const/4 v6, 0x2

    and-int/lit8 v5, v5, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 176
    move-object v5, v0

    new-instance v6, Landroid/support/v4/widget/CursorAdapter$ChangeObserver;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-direct {v7, v8}, Landroid/support/v4/widget/CursorAdapter$ChangeObserver;-><init>(Landroid/support/v4/widget/CursorAdapter;)V

    iput-object v6, v5, Landroid/support/v4/widget/CursorAdapter;->mChangeObserver:Landroid/support/v4/widget/CursorAdapter$ChangeObserver;

    .line 177
    move-object v5, v0

    new-instance v6, Landroid/support/v4/widget/CursorAdapter$MyDataSetObserver;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Landroid/support/v4/widget/CursorAdapter$MyDataSetObserver;-><init>(Landroid/support/v4/widget/CursorAdapter;Landroid/support/v4/widget/CursorAdapter$1;)V

    iput-object v6, v5, Landroid/support/v4/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 183
    :goto_3
    move v5, v4

    if-eqz v5, :cond_1

    .line 184
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/CursorAdapter;->mChangeObserver:Landroid/support/v4/widget/CursorAdapter$ChangeObserver;

    if-eqz v5, :cond_0

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/CursorAdapter;->mChangeObserver:Landroid/support/v4/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v5, v6}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 185
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v5, :cond_1

    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v5, v6}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 187
    :cond_1
    return-void

    .line 168
    :cond_2
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v4/widget/CursorAdapter;->mAutoRequery:Z

    goto :goto_0

    .line 170
    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    .line 174
    :cond_4
    const/4 v6, -0x1

    goto :goto_2

    .line 179
    :cond_5
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/support/v4/widget/CursorAdapter;->mChangeObserver:Landroid/support/v4/widget/CursorAdapter$ChangeObserver;

    .line 180
    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/support/v4/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    goto :goto_3
.end method

.method protected init(Landroid/content/Context;Landroid/database/Cursor;Z)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 160
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/widget/CursorAdapter;->init(Landroid/content/Context;Landroid/database/Cursor;I)V

    .line 161
    return-void

    .line 160
    :cond_0
    const/4 v7, 0x2

    goto :goto_0
.end method

.method public newDropDownView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8

    .prologue
    .line 296
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/widget/CursorAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method public abstract newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method protected onContentChanged()V
    .locals 3

    .prologue
    .line 447
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/widget/CursorAdapter;->mAutoRequery:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 449
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    move-result v2

    iput-boolean v2, v1, Landroid/support/v4/widget/CursorAdapter;->mDataValid:Z

    .line 451
    :cond_0
    return-void
.end method

.method public runQueryOnBackgroundThread(Ljava/lang/CharSequence;)Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 396
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    if-eqz v2, :cond_0

    .line 397
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/widget/FilterQueryProvider;->runQuery(Ljava/lang/CharSequence;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    .line 400
    :goto_0
    return-object v0

    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    move-object v0, v2

    goto :goto_0
.end method

.method public setFilterQueryProvider(Landroid/widget/FilterQueryProvider;)V
    .locals 4

    .prologue
    .line 436
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/widget/CursorAdapter;->mFilterQueryProvider:Landroid/widget/FilterQueryProvider;

    .line 437
    return-void
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 6

    .prologue
    .line 332
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    if-ne v3, v4, :cond_0

    .line 333
    const/4 v3, 0x0

    move-object v0, v3

    .line 354
    :goto_0
    return-object v0

    .line 335
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    move-object v2, v3

    .line 336
    move-object v3, v2

    if-eqz v3, :cond_2

    .line 337
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/CursorAdapter;->mChangeObserver:Landroid/support/v4/widget/CursorAdapter$ChangeObserver;

    if-eqz v3, :cond_1

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/CursorAdapter;->mChangeObserver:Landroid/support/v4/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v3, v4}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 338
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v3, :cond_2

    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v3, v4}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 340
    :cond_2
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/widget/CursorAdapter;->mCursor:Landroid/database/Cursor;

    .line 341
    move-object v3, v1

    if-eqz v3, :cond_5

    .line 342
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/CursorAdapter;->mChangeObserver:Landroid/support/v4/widget/CursorAdapter$ChangeObserver;

    if-eqz v3, :cond_3

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/CursorAdapter;->mChangeObserver:Landroid/support/v4/widget/CursorAdapter$ChangeObserver;

    invoke-interface {v3, v4}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 343
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    if-eqz v3, :cond_4

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/widget/CursorAdapter;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v3, v4}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 344
    :cond_4
    move-object v3, v0

    move-object v4, v1

    const-string v5, "_id"

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/support/v4/widget/CursorAdapter;->mRowIDColumn:I

    .line 345
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v4/widget/CursorAdapter;->mDataValid:Z

    .line 347
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 354
    :goto_1
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 349
    :cond_5
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/v4/widget/CursorAdapter;->mRowIDColumn:I

    .line 350
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v4/widget/CursorAdapter;->mDataValid:Z

    .line 352
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetInvalidated()V

    goto :goto_1
.end method
