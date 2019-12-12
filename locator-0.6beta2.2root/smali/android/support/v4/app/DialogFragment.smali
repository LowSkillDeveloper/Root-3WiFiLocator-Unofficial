.class public Landroid/support/v4/app/DialogFragment;
.super Landroid/support/v4/app/Fragment;
.source "DialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field private static final SAVED_BACK_STACK_ID:Ljava/lang/String; = "android:backStackId"

.field private static final SAVED_CANCELABLE:Ljava/lang/String; = "android:cancelable"

.field private static final SAVED_DIALOG_STATE_TAG:Ljava/lang/String; = "android:savedDialogState"

.field private static final SAVED_SHOWS_DIALOG:Ljava/lang/String; = "android:showsDialog"

.field private static final SAVED_STYLE:Ljava/lang/String; = "android:style"

.field private static final SAVED_THEME:Ljava/lang/String; = "android:theme"

.field public static final STYLE_NORMAL:I = 0x0

.field public static final STYLE_NO_FRAME:I = 0x2

.field public static final STYLE_NO_INPUT:I = 0x3

.field public static final STYLE_NO_TITLE:I = 0x1


# instance fields
.field mBackStackId:I

.field mCancelable:Z

.field mDialog:Landroid/app/Dialog;

.field mDismissed:Z

.field mShownByMe:Z

.field mShowsDialog:Z

.field mStyle:I

.field mTheme:I

.field mViewDestroyed:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 84
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 73
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v4/app/DialogFragment;->mStyle:I

    .line 74
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v4/app/DialogFragment;->mTheme:I

    .line 75
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    .line 76
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    .line 77
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    .line 85
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .prologue
    .line 155
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/DialogFragment;->dismissInternal(Z)V

    .line 156
    return-void
.end method

.method public dismissAllowingStateLoss()V
    .locals 3

    .prologue
    .line 165
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v4/app/DialogFragment;->dismissInternal(Z)V

    .line 166
    return-void
.end method

.method dismissInternal(Z)V
    .locals 6

    .prologue
    .line 169
    move-object v0, p0

    move v1, p1

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    if-eqz v3, :cond_0

    .line 192
    :goto_0
    return-void

    .line 172
    :cond_0
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    .line 173
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z

    .line 174
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_1

    .line 175
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->dismiss()V

    .line 176
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 178
    :cond_1
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z

    .line 179
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    if-ltz v3, :cond_2

    .line 180
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/app/DialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/FragmentManager;->popBackStack(II)V

    .line 182
    move-object v3, v0

    const/4 v4, -0x1

    iput v4, v3, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    .line 192
    :goto_1
    goto :goto_0

    .line 184
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/app/DialogFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    move-object v2, v3

    .line 185
    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 186
    move v3, v1

    if-eqz v3, :cond_3

    .line 187
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    move-result v3

    goto :goto_1

    .line 189
    :cond_3
    move-object v3, v2

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    move-result v3

    goto :goto_1
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 2

    .prologue
    .line 195
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    move-object v0, v1

    return-object v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 5

    .prologue
    .line 291
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    if-nez v2, :cond_0

    .line 292
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v4/app/Fragment;->getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;

    move-result-object v2

    move-object v0, v2

    .line 310
    :goto_0
    return-object v0

    .line 295
    :cond_0
    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/app/DialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 296
    move-object v2, v0

    iget v2, v2, Landroid/support/v4/app/DialogFragment;->mStyle:I

    packed-switch v2, :pswitch_data_0

    .line 306
    :goto_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_1

    .line 307
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    move-object v0, v2

    goto :goto_0

    .line 298
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x18

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 304
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    move-result v2

    goto :goto_1

    .line 310
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/DialogFragment;->mActivity:Landroid/support/v4/app/FragmentActivity;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    move-object v0, v2

    goto :goto_0

    .line 296
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getShowsDialog()Z
    .locals 2

    .prologue
    .line 248
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    move v0, v1

    return v0
.end method

.method public getTheme()I
    .locals 2

    .prologue
    .line 199
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/DialogFragment;->mTheme:I

    move v0, v1

    return v0
.end method

.method public isCancelable()Z
    .locals 2

    .prologue
    .line 220
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    move v0, v1

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 355
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 357
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    if-nez v4, :cond_0

    .line 378
    :goto_0
    return-void

    .line 361
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/app/DialogFragment;->getView()Landroid/view/View;

    move-result-object v4

    move-object v2, v4

    .line 362
    move-object v4, v2

    if-eqz v4, :cond_2

    .line 363
    move-object v4, v2

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 364
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "DialogFragment can not be attached to a container view"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 366
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    move-object v5, v2

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 368
    :cond_2
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/app/DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOwnerActivity(Landroid/app/Activity;)V

    .line 369
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 370
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 371
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    move-object v5, v0

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 372
    move-object v4, v1

    if-eqz v4, :cond_3

    .line 373
    move-object v4, v1

    const-string v5, "android:savedDialogState"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    move-object v3, v4

    .line 374
    move-object v4, v3

    if-eqz v4, :cond_3

    .line 375
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    move-object v5, v3

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 378
    :cond_3
    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4

    .prologue
    .line 253
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 254
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z

    if-nez v2, :cond_0

    .line 257
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    .line 259
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 341
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 274
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 276
    move-object v2, v0

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/app/DialogFragment;->mContainerId:I

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    .line 278
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 279
    move-object v2, v0

    move-object v3, v1

    const-string v4, "android:style"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/support/v4/app/DialogFragment;->mStyle:I

    .line 280
    move-object v2, v0

    move-object v3, v1

    const-string v4, "android:theme"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/support/v4/app/DialogFragment;->mTheme:I

    .line 281
    move-object v2, v0

    move-object v3, v1

    const-string v4, "android:cancelable"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    .line 282
    move-object v2, v0

    move-object v3, v1

    const-string v4, "android:showsDialog"

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, v2, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    .line 283
    move-object v2, v0

    move-object v3, v1

    const-string v4, "android:backStackId"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    .line 286
    :cond_0
    return-void

    .line 276
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .prologue
    .line 337
    move-object v0, p0

    move-object v1, p1

    new-instance v2, Landroid/app/Dialog;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/app/DialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/app/DialogFragment;->getTheme()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    move-object v0, v2

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 428
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 429
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 433
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z

    .line 434
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 435
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    .line 437
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 263
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 264
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z

    if-nez v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    if-nez v1, :cond_0

    .line 268
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    .line 270
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .prologue
    .line 344
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z

    if-nez v2, :cond_0

    .line 349
    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/DialogFragment;->dismissInternal(Z)V

    .line 351
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 391
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 392
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v3, :cond_0

    .line 393
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v3}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v3

    move-object v2, v3

    .line 394
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 395
    move-object v3, v1

    const-string v4, "android:savedDialogState"

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 398
    :cond_0
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/app/DialogFragment;->mStyle:I

    if-eqz v3, :cond_1

    .line 399
    move-object v3, v1

    const-string v4, "android:style"

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/app/DialogFragment;->mStyle:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 401
    :cond_1
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/app/DialogFragment;->mTheme:I

    if-eqz v3, :cond_2

    .line 402
    move-object v3, v1

    const-string v4, "android:theme"

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/app/DialogFragment;->mTheme:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 404
    :cond_2
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    if-nez v3, :cond_3

    .line 405
    move-object v3, v1

    const-string v4, "android:cancelable"

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 407
    :cond_3
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    if-nez v3, :cond_4

    .line 408
    move-object v3, v1

    const-string v4, "android:showsDialog"

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 410
    :cond_4
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_5

    .line 411
    move-object v3, v1

    const-string v4, "android:backStackId"

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 413
    :cond_5
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 382
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 383
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 384
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z

    .line 385
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 387
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 417
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 418
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    .line 419
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->hide()V

    .line 421
    :cond_0
    return-void
.end method

.method public setCancelable(Z)V
    .locals 4

    .prologue
    .line 212
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v4/app/DialogFragment;->mCancelable:Z

    .line 213
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/DialogFragment;->mDialog:Landroid/app/Dialog;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 214
    :cond_0
    return-void
.end method

.method public setShowsDialog(Z)V
    .locals 4

    .prologue
    .line 241
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v4/app/DialogFragment;->mShowsDialog:Z

    .line 242
    return-void
.end method

.method public setStyle(II)V
    .locals 5

    .prologue
    .line 102
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v4/app/DialogFragment;->mStyle:I

    .line 103
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/app/DialogFragment;->mStyle:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/app/DialogFragment;->mStyle:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 104
    :cond_0
    move-object v3, v0

    const v4, 0x1030059

    iput v4, v3, Landroid/support/v4/app/DialogFragment;->mTheme:I

    .line 106
    :cond_1
    move v3, v2

    if-eqz v3, :cond_2

    .line 107
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/v4/app/DialogFragment;->mTheme:I

    .line 109
    :cond_2
    return-void
.end method

.method public show(Landroid/support/v4/app/FragmentTransaction;Ljava/lang/String;)I
    .locals 6

    .prologue
    .line 140
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    .line 141
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z

    .line 142
    move-object v3, v1

    move-object v4, v0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 143
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v4/app/DialogFragment;->mViewDestroyed:Z

    .line 144
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    move-result v4

    iput v4, v3, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    .line 145
    move-object v3, v0

    iget v3, v3, Landroid/support/v4/app/DialogFragment;->mBackStackId:I

    move v0, v3

    return v0
.end method

.method public show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 123
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Landroid/support/v4/app/DialogFragment;->mDismissed:Z

    .line 124
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v4/app/DialogFragment;->mShownByMe:Z

    .line 125
    move-object v4, v1

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    move-object v3, v4

    .line 126
    move-object v4, v3

    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v4

    .line 127
    move-object v4, v3

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    move-result v4

    .line 128
    return-void
.end method
