.class Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoJellybeanImpl;
.super Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl;
.source "AccessibilityNodeInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AccessibilityNodeInfoJellybeanImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 636
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat$AccessibilityNodeInfoIcsImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public addChild(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 654
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v1

    move-object v5, v2

    move v6, v3

    invoke-static {v4, v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->addChild(Ljava/lang/Object;Landroid/view/View;I)V

    .line 655
    return-void
.end method

.method public findFocus(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 644
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->findFocus(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public focusSearch(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 649
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->focusSearch(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public getMovementGranularities(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 694
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->getMovementGranularities(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public isAccessibilityFocused(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 674
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->isAccessibilityFocused(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public isVisibleToUser(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 664
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->isVisibleToUser(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public obtain(Landroid/view/View;I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 639
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->obtain(Landroid/view/View;I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public performAction(Ljava/lang/Object;ILandroid/os/Bundle;)Z
    .locals 7

    .prologue
    .line 684
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, v1

    move v5, v2

    move-object v6, v3

    invoke-static {v4, v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->performAction(Ljava/lang/Object;ILandroid/os/Bundle;)Z

    move-result v4

    move v0, v4

    return v0
.end method

.method public setAccessibilityFocused(Ljava/lang/Object;Z)V
    .locals 5

    .prologue
    .line 679
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->setAccesibilityFocused(Ljava/lang/Object;Z)V

    .line 680
    return-void
.end method

.method public setMovementGranularities(Ljava/lang/Object;I)V
    .locals 5

    .prologue
    .line 689
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->setMovementGranularities(Ljava/lang/Object;I)V

    .line 690
    return-void
.end method

.method public setParent(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 699
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v1

    move-object v5, v2

    move v6, v3

    invoke-static {v4, v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->setParent(Ljava/lang/Object;Landroid/view/View;I)V

    .line 700
    return-void
.end method

.method public setSource(Ljava/lang/Object;Landroid/view/View;I)V
    .locals 7

    .prologue
    .line 659
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v1

    move-object v5, v2

    move v6, v3

    invoke-static {v4, v5, v6}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->setSource(Ljava/lang/Object;Landroid/view/View;I)V

    .line 660
    return-void
.end method

.method public setVisibleToUser(Ljava/lang/Object;Z)V
    .locals 5

    .prologue
    .line 669
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompatJellyBean;->setVisibleToUser(Ljava/lang/Object;Z)V

    .line 670
    return-void
.end method
