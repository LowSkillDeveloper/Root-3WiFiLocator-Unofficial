.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoStubImpl;
.super Ljava/lang/Object;
.source "AccessibilityNodeInfoCompat.java"

# interfaces
.implements Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoStubImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 97
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAction(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public addChild(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 126
    return-void
.end method

.method public addChild(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 131
    return-void
.end method

.method public findAccessibilityNodeInfosByText(Ljava/lang/Object;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public findFocus(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 375
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v3, 0x0

    move-object v0, v3

    return-object v0
.end method

.method public focusSearch(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 380
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v3, 0x0

    move-object v0, v3

    return-object v0
.end method

.method public getActions(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 140
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 146
    return-void
.end method

.method public getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public getChild(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 155
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v3, 0x0

    move-object v0, v3

    return-object v0
.end method

.method public getChildCount(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 160
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getClassName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getContentDescription(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 170
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getMovementGranularities(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 270
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public getPackageName(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 175
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getParent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 180
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getText(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 185
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public getWindowId(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 190
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isAccessibilityFocused(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 230
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isCheckable(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 195
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isChecked(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 200
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isClickable(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 205
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isEnabled(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 210
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isFocusable(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 215
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isFocused(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 220
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isLongClickable(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 235
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isPassword(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 240
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isScrollable(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 245
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isSelected(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 250
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public isVisibleToUser(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 225
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public obtain()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 100
    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public obtain(Landroid/view/View;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 105
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public obtain(Landroid/view/View;I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 110
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v3, 0x0

    move-object v0, v3

    return-object v0
.end method

.method public obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 115
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move-object v0, v2

    return-object v0
.end method

.method public performAction(Ljava/lang/Object;I)Z
    .locals 4

    .prologue
    .line 255
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    const/4 v3, 0x0

    move v0, v3

    return v0
.end method

.method public performAction(Ljava/lang/Object;ILandroid/os/Bundle;)Z
    .locals 5

    .prologue
    .line 260
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    const/4 v4, 0x0

    move v0, v4

    return v0
.end method

.method public recycle(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 391
    return-void
.end method

.method public setAccessibilityFocused(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 331
    return-void
.end method

.method public setBoundsInParent(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 276
    return-void
.end method

.method public setBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 281
    return-void
.end method

.method public setCheckable(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 286
    return-void
.end method

.method public setChecked(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method public setClassName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 296
    return-void
.end method

.method public setClickable(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 301
    return-void
.end method

.method public setContentDescription(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 306
    return-void
.end method

.method public setEnabled(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 311
    return-void
.end method

.method public setFocusable(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 316
    return-void
.end method

.method public setFocused(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 321
    return-void
.end method

.method public setLongClickable(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 336
    return-void
.end method

.method public setMovementGranularities(Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 266
    return-void
.end method

.method public setPackageName(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 341
    return-void
.end method

.method public setParent(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 346
    return-void
.end method

.method public setParent(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 396
    return-void
.end method

.method public setPassword(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 351
    return-void
.end method

.method public setScrollable(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 356
    return-void
.end method

.method public setSelected(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 361
    return-void
.end method

.method public setSource(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 366
    return-void
.end method

.method public setSource(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 371
    return-void
.end method

.method public setText(Ljava/lang/Object;Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 386
    return-void
.end method

.method public setVisibleToUser(Ljava/lang/Object;Z)V
    .locals 0

    .prologue
    .line 326
    return-void
.end method
