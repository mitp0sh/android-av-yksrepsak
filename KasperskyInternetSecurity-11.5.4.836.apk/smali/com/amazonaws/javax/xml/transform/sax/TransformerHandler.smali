.class public interface abstract Lcom/amazonaws/javax/xml/transform/sax/TransformerHandler;
.super Ljava/lang/Object;
.source "TransformerHandler.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/DTDHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;


# virtual methods
.method public abstract getSystemId()Ljava/lang/String;
.end method

.method public abstract getTransformer()Lcom/amazonaws/javax/xml/transform/Transformer;
.end method

.method public abstract setResult(Lcom/amazonaws/javax/xml/transform/Result;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract setSystemId(Ljava/lang/String;)V
.end method
