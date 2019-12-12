.class public Landroid/support/v4/content/CursorLoader;
.super Landroid/support/v4/content/AsyncTaskLoader;
.source "CursorLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/content/AsyncTaskLoader",
        "<",
        "Landroid/database/Cursor;",
        ">;"
    }
.end annotation


# instance fields
.field mCursor:Landroid/database/Cursor;

.field final mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader",
            "<",
            "Landroid/database/Cursor;",
            ">.Force",
            "LoadContentObserver;"
        }
    .end annotation
.end field

.field mProjection:[Ljava/lang/String;

.field mSelection:Ljava/lang/String;

.field mSelectionArgs:[Ljava/lang/String;

.field mSortOrder:Ljava/lang/String;

.field mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 95
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 96
    move-object v2, v0

    new-instance v3, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object v3, v2, Landroid/support/v4/content/CursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 107
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Landroid/support/v4/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 108
    move-object v7, v0

    new-instance v8, Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Landroid/support/v4/content/Loader$ForceLoadContentObserver;-><init>(Landroid/support/v4/content/Loader;)V

    iput-object v8, v7, Landroid/support/v4/content/CursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    .line 109
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Landroid/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;

    .line 110
    move-object v7, v0

    move-object v8, v3

    iput-object v8, v7, Landroid/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;

    .line 111
    move-object v7, v0

    move-object v8, v4

    iput-object v8, v7, Landroid/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;

    .line 112
    move-object v7, v0

    move-object v8, v5

    iput-object v8, v7, Landroid/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 113
    move-object v7, v0

    move-object v8, v6

    iput-object v8, v7, Landroid/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    .line 114
    return-void
.end method


# virtual methods
.method public deliverResult(Landroid/database/Cursor;)V
    .locals 5

    .prologue
    .line 70
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/content/CursorLoader;->isReset()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 72
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 73
    move-object v3, v1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    move-object v2, v3

    .line 78
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    .line 80
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/content/CursorLoader;->isStarted()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 81
    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/support/v4/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 84
    :cond_2
    move-object v3, v2

    if-eqz v3, :cond_3

    move-object v3, v2

    move-object v4, v1

    if-eq v3, v4, :cond_3

    move-object v3, v2

    invoke-interface {v3}, Landroid/database/Cursor;->isClosed()Z

    move-result v3

    if-nez v3, :cond_3

    .line 85
    move-object v3, v2

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 87
    :cond_3
    goto :goto_0
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/database/Cursor;

    invoke-virtual {v2, v3}, Landroid/support/v4/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 204
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroid/support/v4/content/AsyncTaskLoader;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 205
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mUri="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 206
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mProjection="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 207
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 208
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mSelection="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mSelectionArgs="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 211
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mSortOrder="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mCursor="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 213
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mContentChanged="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/content/CursorLoader;->mContentChanged:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 214
    return-void
.end method

.method public getProjection()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 171
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getSelectionArgs()[Ljava/lang/String;
    .locals 2

    .prologue
    .line 187
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getSortOrder()Ljava/lang/String;
    .locals 2

    .prologue
    .line 195
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 163
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;

    move-object v0, v1

    return-object v0
.end method

.method public loadInBackground()Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 49
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/content/CursorLoader;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v1, v2

    .line 51
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 53
    move-object v2, v1

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 54
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/content/CursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/content/CursorLoader;->registerContentObserver(Landroid/database/Cursor;Landroid/database/ContentObserver;)V

    .line 56
    :cond_0
    move-object v2, v1

    move-object v0, v2

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/content/CursorLoader;->loadInBackground()Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public onCanceled(Landroid/database/Cursor;)V
    .locals 3

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-interface {v2}, Landroid/database/Cursor;->isClosed()Z

    move-result v2

    if-nez v2, :cond_0

    .line 145
    move-object v2, v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 147
    :cond_0
    return-void
.end method

.method public bridge synthetic onCanceled(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    check-cast v3, Landroid/database/Cursor;

    invoke-virtual {v2, v3}, Landroid/support/v4/content/CursorLoader;->onCanceled(Landroid/database/Cursor;)V

    return-void
.end method

.method protected onReset()V
    .locals 3

    .prologue
    .line 151
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v4/content/AsyncTaskLoader;->onReset()V

    .line 154
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/content/CursorLoader;->onStopLoading()V

    .line 156
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 157
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 159
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    .line 160
    return-void
.end method

.method protected onStartLoading()V
    .locals 3

    .prologue
    .line 125
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    .line 126
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Landroid/support/v4/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V

    .line 128
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/content/CursorLoader;->takeContentChanged()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/content/CursorLoader;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_2

    .line 129
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/content/CursorLoader;->forceLoad()V

    .line 131
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 2

    .prologue
    .line 139
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/content/CursorLoader;->cancelLoad()Z

    move-result v1

    .line 140
    return-void
.end method

.method registerContentObserver(Landroid/database/Cursor;Landroid/database/ContentObserver;)V
    .locals 5

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/content/CursorLoader;->mObserver:Landroid/support/v4/content/Loader$ForceLoadContentObserver;

    invoke-interface {v3, v4}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 65
    return-void
.end method

.method public setProjection([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 175
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/content/CursorLoader;->mProjection:[Ljava/lang/String;

    .line 176
    return-void
.end method

.method public setSelection(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 183
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/content/CursorLoader;->mSelection:Ljava/lang/String;

    .line 184
    return-void
.end method

.method public setSelectionArgs([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 191
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/content/CursorLoader;->mSelectionArgs:[Ljava/lang/String;

    .line 192
    return-void
.end method

.method public setSortOrder(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 199
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/content/CursorLoader;->mSortOrder:Ljava/lang/String;

    .line 200
    return-void
.end method

.method public setUri(Landroid/net/Uri;)V
    .locals 4

    .prologue
    .line 167
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/content/CursorLoader;->mUri:Landroid/net/Uri;

    .line 168
    return-void
.end method
