.class final Lus;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:J

.field private synthetic b:Lut;

.field private synthetic c:Lur;


# direct methods
.method constructor <init>(Lur;JLut;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lus;->c:Lur;

    iput-wide p2, p0, Lus;->a:J

    iput-object p4, p0, Lus;->b:Lut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lus;->c:Lur;

    iget-wide v1, p0, Lus;->a:J

    invoke-virtual {v0, v1, v2}, Lur;->a(J)V

    .line 56
    iget-object v0, p0, Lus;->b:Lut;

    invoke-interface {v0}, Lut;->a()V

    .line 57
    return-void
.end method
