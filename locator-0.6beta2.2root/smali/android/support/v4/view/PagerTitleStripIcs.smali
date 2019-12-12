.class Landroid/support/v4/view/PagerTitleStripIcs;
.super Ljava/lang/Object;
.source "PagerTitleStripIcs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/PagerTitleStripIcs$SingleLineAllCapsTransform;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 31
    return-void
.end method

.method public static setSingleLineAllCaps(Landroid/widget/TextView;)V
    .locals 6

    .prologue
    .line 28
    move-object v0, p0

    move-object v1, v0

    new-instance v2, Landroid/support/v4/view/PagerTitleStripIcs$SingleLineAllCapsTransform;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-virtual {v4}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v4/view/PagerTitleStripIcs$SingleLineAllCapsTransform;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 29
    return-void
.end method
