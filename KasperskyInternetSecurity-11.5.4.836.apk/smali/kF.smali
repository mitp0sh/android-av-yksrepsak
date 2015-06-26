.class public final LkF;
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
    .line 95
    iput-object p1, p0, LkF;->a:Lcom/kms/additional/gui/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 99
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 100
    return-void
.end method
