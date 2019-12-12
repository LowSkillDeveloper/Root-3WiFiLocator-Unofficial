.class public Landroid/support/v4/content/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/content/Loader$OnLoadCompleteListener;,
        Landroid/support/v4/content/Loader$ForceLoadContentObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field mAbandoned:Z

.field mContentChanged:Z

.field mContext:Landroid/content/Context;

.field mId:I

.field mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/content/Loader$OnLoadCompleteListener",
            "<TD;>;"
        }
    .end annotation
.end field

.field mReset:Z

.field mStarted:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 90
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 38
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/content/Loader;->mStarted:Z

    .line 39
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/content/Loader;->mAbandoned:Z

    .line 40
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/content/Loader;->mReset:Z

    .line 41
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/content/Loader;->mContentChanged:Z

    .line 91
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/content/Loader;->mContext:Landroid/content/Context;

    .line 92
    return-void
.end method


# virtual methods
.method public abandon()V
    .locals 3

    .prologue
    .line 261
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/content/Loader;->mAbandoned:Z

    .line 262
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/content/Loader;->onAbandon()V

    .line 263
    return-void
.end method

.method public dataToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 341
    move-object v0, p0

    move-object v1, p1

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const/16 v5, 0x40

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v2, v3

    .line 342
    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 343
    move-object v3, v2

    const-string v4, "}"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 344
    move-object v3, v2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public deliverResult(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)V"
        }
    .end annotation

    .prologue
    .line 102
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    if-eqz v2, :cond_0

    .line 103
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-object v3, v0

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/content/Loader$OnLoadCompleteListener;->onLoadComplete(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V

    .line 105
    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 366
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mId="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/content/Loader;->mId:I

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 367
    move-object v5, v3

    const-string v6, " mListener="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 368
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mStarted="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/content/Loader;->mStarted:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 369
    move-object v5, v3

    const-string v6, " mContentChanged="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/content/Loader;->mContentChanged:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 370
    move-object v5, v3

    const-string v6, " mAbandoned="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/content/Loader;->mAbandoned:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 371
    move-object v5, v3

    const-string v6, " mReset="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/content/Loader;->mReset:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 372
    return-void
.end method

.method public forceLoad()V
    .locals 2

    .prologue
    .line 217
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/content/Loader;->onForceLoad()V

    .line 218
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 111
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/content/Loader;->mContext:Landroid/content/Context;

    move-object v0, v1

    return-object v0
.end method

.method public getId()I
    .locals 2

    .prologue
    .line 118
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/content/Loader;->mId:I

    move v0, v1

    return v0
.end method

.method public isAbandoned()Z
    .locals 2

    .prologue
    .line 166
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/content/Loader;->mAbandoned:Z

    move v0, v1

    return v0
.end method

.method public isReset()Z
    .locals 2

    .prologue
    .line 175
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/content/Loader;->mReset:Z

    move v0, v1

    return v0
.end method

.method public isStarted()Z
    .locals 2

    .prologue
    .line 157
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/content/Loader;->mStarted:Z

    move v0, v1

    return v0
.end method

.method protected onAbandon()V
    .locals 0

    .prologue
    .line 275
    return-void
.end method

.method public onContentChanged()V
    .locals 3

    .prologue
    .line 326
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/content/Loader;->mStarted:Z

    if-eqz v1, :cond_0

    .line 327
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/content/Loader;->forceLoad()V

    .line 334
    :goto_0
    return-void

    .line 332
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/content/Loader;->mContentChanged:Z

    goto :goto_0
.end method

.method protected onForceLoad()V
    .locals 0

    .prologue
    .line 225
    return-void
.end method

.method protected onReset()V
    .locals 0

    .prologue
    .line 304
    return-void
.end method

.method protected onStartLoading()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method public registerListener(ILandroid/support/v4/content/Loader$OnLoadCompleteListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/support/v4/content/Loader$OnLoadCompleteListener",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    if-eqz v3, :cond_0

    .line 130
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "There is already a listener registered"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 132
    :cond_0
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    .line 133
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v4/content/Loader;->mId:I

    .line 134
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    .line 290
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/content/Loader;->onReset()V

    .line 291
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/content/Loader;->mReset:Z

    .line 292
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/content/Loader;->mStarted:Z

    .line 293
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/content/Loader;->mAbandoned:Z

    .line 294
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/content/Loader;->mContentChanged:Z

    .line 295
    return-void
.end method

.method public final startLoading()V
    .locals 3

    .prologue
    .line 194
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/content/Loader;->mStarted:Z

    .line 195
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/content/Loader;->mReset:Z

    .line 196
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/content/Loader;->mAbandoned:Z

    .line 197
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/content/Loader;->onStartLoading()V

    .line 198
    return-void
.end method

.method public stopLoading()V
    .locals 3

    .prologue
    .line 242
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/content/Loader;->mStarted:Z

    .line 243
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/content/Loader;->onStopLoading()V

    .line 244
    return-void
.end method

.method public takeContentChanged()Z
    .locals 4

    .prologue
    .line 312
    move-object v0, p0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/content/Loader;->mContentChanged:Z

    move v1, v2

    .line 313
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/content/Loader;->mContentChanged:Z

    .line 314
    move v2, v1

    move v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 349
    move-object v0, p0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x40

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v2

    .line 350
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 351
    move-object v2, v1

    const-string v3, " id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 352
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/content/Loader;->mId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 353
    move-object v2, v1

    const-string v3, "}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 354
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public unregisterListener(Landroid/support/v4/content/Loader$OnLoadCompleteListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader$OnLoadCompleteListener",
            "<TD;>;)V"
        }
    .end annotation

    .prologue
    .line 142
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    if-nez v2, :cond_0

    .line 143
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "No listener register"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 145
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-object v3, v1

    if-eq v2, v3, :cond_1

    .line 146
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Attempting to unregister the wrong listener"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 148
    :cond_1
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v4/content/Loader;->mListener:Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    .line 149
    return-void
.end method
