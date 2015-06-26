.class public final LwH;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/updater/gui/KMSConfirmUpdateActivity;


# direct methods
.method public constructor <init>(Lcom/kms/updater/gui/KMSConfirmUpdateActivity;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, LwH;->a:Lcom/kms/updater/gui/KMSConfirmUpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, LwH;->a:Lcom/kms/updater/gui/KMSConfirmUpdateActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->a(Lcom/kms/updater/gui/KMSConfirmUpdateActivity;Z)Z

    .line 180
    iget-object v0, p0, LwH;->a:Lcom/kms/updater/gui/KMSConfirmUpdateActivity;

    const v1, 0x7f0b003f

    invoke-virtual {v0, v1}, Lcom/kms/updater/gui/KMSConfirmUpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f070246

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 181
    return-void
.end method
