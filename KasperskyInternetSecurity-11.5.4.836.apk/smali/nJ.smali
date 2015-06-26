.class final LnJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:LnH;


# direct methods
.method constructor <init>(LnH;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, LnJ;->a:LnH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 39
    invoke-static {}, Lsr;->o()Lsn;

    move-result-object v0

    .line 40
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsn;->a(Z)V

    .line 41
    return-void
.end method
