.class final Lnn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Landroid/app/Activity;

.field private synthetic b:I


# direct methods
.method constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lnn;->a:Landroid/app/Activity;

    iput p2, p0, Lnn;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lnn;->a:Landroid/app/Activity;

    iget v1, p0, Lnn;->b:I

    invoke-static {v0, v1}, Lcom/kms/gui/KMSHelpActivity;->a(Landroid/content/Context;I)V

    .line 29
    return-void
.end method
