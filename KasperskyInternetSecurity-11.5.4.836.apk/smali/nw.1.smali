.class final Lnw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lnv;


# direct methods
.method constructor <init>(Lnv;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lnw;->a:Lnv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 87
    iget-object v0, p0, Lnw;->a:Lnv;

    invoke-static {v0}, Lnv;->b(Lnv;)Lnz;

    move-result-object v0

    iget-object v1, p0, Lnw;->a:Lnv;

    invoke-static {v1}, Lnv;->a(Lnv;)I

    move-result v1

    const/4 v2, -0x2

    invoke-interface {v0, v1, v2}, Lnz;->a(II)V

    .line 88
    return-void
.end method
