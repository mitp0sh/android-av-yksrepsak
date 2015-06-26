.class public final LnM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field private synthetic a:Landroid/view/View;

.field private synthetic b:Landroid/view/View;

.field private synthetic c:Lcom/kms/gui/SelectFolderActivity;


# direct methods
.method public constructor <init>(Lcom/kms/gui/SelectFolderActivity;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, LnM;->c:Lcom/kms/gui/SelectFolderActivity;

    iput-object p2, p0, LnM;->a:Landroid/view/View;

    iput-object p3, p0, LnM;->b:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 323
    packed-switch p2, :pswitch_data_0

    .line 331
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 325
    :pswitch_0
    iget-object v1, p0, LnM;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 328
    :pswitch_1
    iget-object v1, p0, LnM;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 323
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
