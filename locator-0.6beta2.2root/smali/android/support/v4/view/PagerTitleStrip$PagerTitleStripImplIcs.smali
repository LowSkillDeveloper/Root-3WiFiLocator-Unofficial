.class Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImplIcs;
.super Ljava/lang/Object;
.source "PagerTitleStrip.java"

# interfaces
.implements Landroid/support/v4/view/PagerTitleStrip$PagerTitleStripImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/PagerTitleStrip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PagerTitleStripImplIcs"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setSingleLineAllCaps(Landroid/widget/TextView;)V
    .locals 3

    .prologue
    .line 94
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/PagerTitleStripIcs;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    .line 95
    return-void
.end method
