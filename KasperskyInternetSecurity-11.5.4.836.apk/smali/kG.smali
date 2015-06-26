.class public final LkG;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/kms/additional/gui/AboutActivity;


# direct methods
.method public constructor <init>(Lcom/kms/additional/gui/AboutActivity;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, LkG;->a:Lcom/kms/additional/gui/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 115
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 116
    return-void
.end method
