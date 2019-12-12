.class Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/graphics/drawable/Drawable$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ActionBarDrawerToggle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SlideDrawable"
.end annotation


# instance fields
.field private mOffset:F

.field private mOffsetBy:F

.field private final mTmpRect:Landroid/graphics/Rect;

.field private mWrapped:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .prologue
    .line 323
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 321
    move-object v2, v0

    new-instance v3, Landroid/graphics/Rect;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v2, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    .line 324
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    .line 325
    return-void
.end method


# virtual methods
.method public clearColorFilter()V
    .locals 2

    .prologue
    .line 387
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->clearColorFilter()V

    .line 388
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .prologue
    .line 343
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 344
    move-object v2, v1

    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 345
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mOffsetBy:F

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mOffset:F

    neg-float v4, v4

    mul-float/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 346
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 347
    move-object v2, v1

    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 348
    return-void
.end method

.method public getChangingConfigurations()I
    .locals 2

    .prologue
    .line 357
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2

    .prologue
    .line 464
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getCurrent()Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 407
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .prologue
    .line 444
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 439
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getMinimumHeight()I
    .locals 2

    .prologue
    .line 454
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getMinimumWidth()I
    .locals 2

    .prologue
    .line 449
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getOffset()F
    .locals 2

    .prologue
    .line 333
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mOffset:F

    move v0, v1

    return v0
.end method

.method public getOpacity()I
    .locals 2

    .prologue
    .line 417
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 4

    .prologue
    .line 459
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public getState()[I
    .locals 2

    .prologue
    .line 402
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getTransparentRegion()Landroid/graphics/Region;
    .locals 2

    .prologue
    .line 422
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getTransparentRegion()Landroid/graphics/Region;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .prologue
    .line 469
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    if-ne v2, v3, :cond_0

    .line 470
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->invalidateSelf()V

    .line 472
    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 2

    .prologue
    .line 392
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 433
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 434
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 435
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 4

    .prologue
    .line 427
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    .line 428
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 9

    .prologue
    .line 476
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-object v5, v1

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    if-ne v5, v6, :cond_0

    .line 477
    move-object v5, v0

    move-object v6, v2

    move-wide v7, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 479
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 4

    .prologue
    .line 372
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 373
    return-void
.end method

.method public setChangingConfigurations(I)V
    .locals 4

    .prologue
    .line 352
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setChangingConfigurations(I)V

    .line 353
    return-void
.end method

.method public setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V
    .locals 6

    .prologue
    .line 382
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 383
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 4

    .prologue
    .line 377
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 378
    return-void
.end method

.method public setDither(Z)V
    .locals 4

    .prologue
    .line 362
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setDither(Z)V

    .line 363
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 4

    .prologue
    .line 367
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 368
    return-void
.end method

.method public setOffset(F)V
    .locals 4

    .prologue
    .line 328
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mOffset:F

    .line 329
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->invalidateSelf()V

    .line 330
    return-void
.end method

.method public setOffsetBy(F)V
    .locals 4

    .prologue
    .line 337
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput v3, v2, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mOffsetBy:F

    .line 338
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->invalidateSelf()V

    .line 339
    return-void
.end method

.method public setState([I)Z
    .locals 4

    .prologue
    .line 397
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public setVisible(ZZ)Z
    .locals 6

    .prologue
    .line 412
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    .line 483
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->mWrapped:Landroid/graphics/drawable/Drawable;

    if-ne v3, v4, :cond_0

    .line 484
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/app/ActionBarDrawerToggle$SlideDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 486
    :cond_0
    return-void
.end method
